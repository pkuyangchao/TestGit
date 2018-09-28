package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Permission;
import com.yc.movie.bean.PermissionExample;
import com.yc.movie.bean.PermissionExample.Criteria;
import com.yc.movie.dao.PermissionMapper;
import com.yc.movie.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService{

	@Autowired
	PermissionMapper permissionMapper;
	
	@Override
	public List<Permission> getPermissionsByRoleId(Integer roleId) {
		return permissionMapper.findPermissionsByRoleId(roleId);
	}

	@Override
	public List<Permission> getAllPermissions() {
		return permissionMapper.selectByExample(null);
	}

	@Override
	public void updatePermission(Permission permission) {
		permissionMapper.updateByPrimaryKeySelective(permission);
	}

	@Override
	public void addPermission(Permission permission) {
		permissionMapper.insertSelective(permission);
	}

	@Override
	public void deletePermission(Integer permissionId) {
		permissionMapper.deleteByPrimaryKey(permissionId);
	}

	@Override
	public void deleteBatchPermissions(List<Integer> ids) {
		PermissionExample example = new PermissionExample();
		Criteria criteria = example.createCriteria();
		criteria.andPermissionIdIn(ids);
		permissionMapper.deleteByExample(example);
	}

}
