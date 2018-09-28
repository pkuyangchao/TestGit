package com.yc.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.movie.bean.Admin;
import com.yc.movie.bean.Role;
import com.yc.movie.service.AdminService;
import com.yc.movie.service.PermissionService;
import com.yc.movie.service.RoleService;
import com.yc.movie.utils.Msg;

@Controller
public class RoleController {

	@Autowired
	RoleService roleService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	PermissionService permissionService;
	
	@RequestMapping("/adminrole")
	public String adminrole(Model model) {
		
		List<Role> roles = roleService.getAll();
		List<Admin> admins = adminService.getAll(null);
		for(Role role:roles) {
			String string = new String();
			for (Admin admin : admins) {
				Integer id = admin.getRole().getRoleId();
				if (role.getRoleId()==id) {
					string += admin.getAdminAccount()+"、";
				}
			}
			//string = string.substring(string.length()-1);
			role.setRoleUsers(string);
			roleService.updateRole(role);
		}
		List<Role> roles2 = roleService.getAll();
		model.addAttribute("roles", roles2);
		model.addAttribute("total", roles2.size());
		return "admin/rolelist";
	}
	
	@ResponseBody
	@RequestMapping(value="/role/{ids}",method=RequestMethod.DELETE)
	public Msg deleteAdmin(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			roleService.deleteBatchRoles(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			roleService.deleteByRoleId(id);
		}
		return Msg.success().add("total", roleService.getAll().size());
	}
	
	@RequestMapping("/listPermissions")
	@ResponseBody
	public List listPermissions(){
		return permissionService.getAllPermissions();
	}
	
	@RequestMapping("/corelationPermission")
	@ResponseBody
	public void corelationPermission(Integer permissionId,Integer roleId){
		 roleService.updateRolePermission(roleId,permissionId);
	}
	
	@RequestMapping("/roleadd")
	@ResponseBody
	public Role addRole(Role role, Integer permissionId){
		roleService.insertRole(role);
		return role;
	}
	
	@RequestMapping("/roleupdate")
	public String roleupdate(@RequestParam("roleId")Integer roleId,Model model) {
		Role role = roleService.selectByRoleId(roleId);
		model.addAttribute("role",role);
		
		return "admin/adminupdate";
	}
	
	@RequestMapping("/getPermissionsByRoleId")
	@ResponseBody
	public List getPermissionsByRoleId(Integer roleId){
		return permissionService.getPermissionsByRoleId(roleId);
	}
	
	@ResponseBody
	@RequestMapping(value="/role",method=RequestMethod.PUT)
	public Msg saveRole(@RequestParam("/roleId")Integer roleId,
			@RequestParam("/roleName")String roleName,
			@RequestParam("/roleDesc")String roleDesc,
			@RequestParam("/rolepermission")Integer rolepermission,
			HttpServletRequest request){
		Role role = roleService.selectByRoleId(roleId);
		role.setRoleName(roleName);
		role.setRoleDesc(roleDesc);
		roleService.updateRole(role);
		
		roleService.updateRolePermission(roleId,rolepermission);
		return Msg.success();
	}
	
}
