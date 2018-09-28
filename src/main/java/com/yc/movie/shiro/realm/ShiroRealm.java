package com.yc.movie.shiro.realm;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.yc.movie.bean.Admin;
import com.yc.movie.service.AdminService;

public class ShiroRealm extends AuthorizingRealm{

	@Autowired
	AdminService adminService;
	
	//用于授权的方法
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//1.从PrincipalCollection虎丘登录用户的信息
		String principal = (String) principals.getPrimaryPrincipal();
		
		//2.利用登录用户的信息来获取当前用户的角色或权限（可能需要数据库）
//		Set<String> roles = new HashSet<>();
//		roles.add("user");
//		if("admin".equals(principal)){
//			roles.add("admin");
//		}
		
		//3.创建SimpleAuthorizationInfo，并设置其roles属性
		//SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setRoles(adminService.findRolesByUserName(principal));
		System.out.println(adminService.findRolesByUserName(principal));
		//返回SimpleAuthorizationInfo对象
		return info;
	}

	//用于认证的方法
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		//1.把AuthenticationToken 转换为 UsernamePasswordToken
		UsernamePasswordToken upToken = (UsernamePasswordToken) token;
		
		//2.从UsernamePasswordToken 中获取username
		String username = upToken.getUsername();
		
		//3.调用数据库的方法，从数据库获取对应username的用户记录
		System.out.println("从数据库中获取 username: " + username + "所对应的信息.");
		Admin admin = adminService.selectByAdminAccount(username);

		//4.若用户不存在，则可抛出异常UnknownAccountException
		if(null==admin){
			throw new UnknownAccountException("用户不存在！");
		}
		
		//5.根据用户信息的情况，决定是否需要抛出其他的异常AuthenticationException
//		if("monster".equals(username)){
//			throw new LockedAccountException("用户被锁定");
//		}
		
		//6.根据用户的情况，来构建AuthenticationInfo 对象并返回，通常使用的实现类是SimpleAuthenticationInfo
				//1). principal: 认证的实体信息，可以是 username,也可以是数据表对应的用户实体类对象
				Object principal = admin.getAdminAccount();
				//2). credentials: 从数据库表中获取的密码
				
				Object credentials = admin.getAdminPassword(); 
				
				//3). realmName:当前 realm 对象的 name. 调用父类的 getName() 方法即可
				String realmName = getName();
				//4).盐值
				ByteSource credentialsSalt = ByteSource.Util.bytes(admin.getAdminId()+admin.getAdminPassword());
				
				SimpleAuthenticationInfo info = null; //new SimpleAuthenticationInfo(principal, credentials, realmName);
				info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt, realmName);
		
		return info;
	}

}
