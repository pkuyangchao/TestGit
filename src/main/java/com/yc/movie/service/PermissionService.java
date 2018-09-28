package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Permission;

public interface PermissionService {

	List<Permission> getPermissionsByRoleId(Integer roleId);
	
	List<Permission> getAllPermissions();
	
	void updatePermission(Permission permission);
	
	void addPermission(Permission permission);
	
	void deletePermission(Integer permissionId);
	
	void deleteBatchPermissions(List<Integer> ids);
}
