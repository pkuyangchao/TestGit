package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Role;

public interface RoleService {

	List<Role> getAll();
	
	void insertRole(Role role);
	
	void updateRole(Role role);
	
	void deleteByRoleId(Integer roleId);
	
	void deleteBatchRoles(List<Integer> ids);
	
	List getRolesByAdminAccount(String userName);

	void updateRolePermission(Integer roleId, Integer permissionId);

	Role selectByRoleId(Integer roleId);
}
