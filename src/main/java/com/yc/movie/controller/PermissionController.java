package com.yc.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yc.movie.bean.Permission;
import com.yc.movie.service.PermissionService;

@Controller
public class PermissionController {

	@Autowired
	private PermissionService permissionService;
	
	@RequestMapping("/adminpermission")
	public ModelAndView showPermissionlist(){
		List<Permission> list=permissionService.getAllPermissions();
		
		ModelAndView mav=new ModelAndView("admin/permissionlist");
		mav.addObject("perms", list);
		
		return mav;
	}
	
	@RequestMapping("/showroleperms")
	@ResponseBody
	public List showRolePerms(Integer roleId){
		System.out.println(permissionService.getPermissionsByRoleId(roleId).toString());
		return permissionService.getPermissionsByRoleId(roleId);
	}
}
