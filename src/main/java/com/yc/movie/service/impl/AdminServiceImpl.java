package com.yc.movie.service.impl;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Admin;
import com.yc.movie.bean.AdminExample;
import com.yc.movie.bean.AdminExample.Criteria;
import com.yc.movie.dao.AdminMapper;
import com.yc.movie.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public Admin selectByAdminAccount(String adminAccount) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminAccountEqualTo(adminAccount);
		List<Admin> admins = adminMapper.selectByExample(example);
		if (null!=admins) {
			return admins.get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public Admin adminLogin(String adminAccount, String adminPassword) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminAccountEqualTo(adminAccount).andAdminPasswordEqualTo(adminPassword);
		List<Admin> admins = adminMapper.selectByExample(example);
		if (null!=admins) {
			return admins.get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public void adminSave(Admin admin) {
		adminMapper.insertSelective(admin);
	}

	@Override
	public List<Admin> getAll(String keyword) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		if (keyword==null||keyword=="") {
			return adminMapper.selectByExample(null);
		}
		criteria.andAdminAccountLike(keyword);
		return adminMapper.selectByExample(example);
	}

	@Override
	public void deleteAdmin(Integer adminId) {
		adminMapper.deleteByPrimaryKey(adminId);
	}

	@Override
	public void deleteBatchAdmins(List<Integer> ids) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminIdIn(ids);
		adminMapper.deleteByExample(example);
	}

	@Override
	public void updateAdmin(Admin admin) {
		adminMapper.updateByPrimaryKeySelective(admin);
	}

	@Override
	public Admin selectByAdminId(Integer adminId) {
		Admin admin = adminMapper.selectByPrimaryKey(adminId);
		return admin;
	}

	@Override
	public Set<String> findRolesByUserName(String adminAccount) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminAccountEqualTo(adminAccount);
		Admin admin = adminMapper.selectByExample(example).get(0);
		Set<String> roles = new HashSet<>();
		if (1==Integer.parseInt(admin.getAdminType())) {
			roles.add("superAdmin");
		}else {
			roles.add("admin");
		}
		return roles;
	}

}
