package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Role;
import com.yc.movie.bean.RoleExample;
import com.yc.movie.bean.RoleExample.Criteria;
import com.yc.movie.bean.RolePermission;
import com.yc.movie.bean.RolePermissionExample;
import com.yc.movie.dao.RoleMapper;
import com.yc.movie.dao.RolePermissionMapper;
import com.yc.movie.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	RoleMapper roleMapper;
	
	@Autowired
	RolePermissionMapper rolePermissionMapper;
	
	@Override
	public List<Role> getAll() {
		return roleMapper.selectByExample(null);
	}

	@Override
	public void insertRole(Role role) {
		roleMapper.insertSelective(role);
	}

	@Override
	public void updateRole(Role role) {
		roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public void deleteByRoleId(Integer roleId) {
		roleMapper.deleteByPrimaryKey(roleId);
	}

	@Override
	public void deleteBatchRoles(List<Integer> ids) {
		RoleExample example = new RoleExample();
		Criteria criteria = example.createCriteria();
		criteria.andRoleIdIn(ids);
		roleMapper.deleteByExample(example);
	}

	@Override
	public List<Role> getRolesByAdminAccount(String userName) {
		return roleMapper.findRolesByUserName(userName);
	}

	@Override
	public void updateRolePermission(Integer roleId, Integer permissionId) {
		RolePermissionExample example = new RolePermissionExample();
		com.yc.movie.bean.RolePermissionExample.Criteria criteria = example.createCriteria();
		criteria.andRoleIdEqualTo(roleId);
		RolePermission rolePermission = (RolePermission) rolePermissionMapper.selectByExample(example);
		
		RolePermissionExample example2 = new RolePermissionExample();
		com.yc.movie.bean.RolePermissionExample.Criteria criteria2 = example.createCriteria();
		criteria2.andPermissionIdEqualTo(permissionId);
		
		rolePermissionMapper.updateByExample(rolePermission, example2);
	}

	@Override
	public Role selectByRoleId(Integer roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

}
