package com.yc.movie.service;

import java.util.List;
import java.util.Set;

import com.yc.movie.bean.Admin;

public interface AdminService {
	
	Admin selectByAdminAccount(String adminAccount);
	
	Admin adminLogin(String adminAccount,String adminPassword);
	
	void adminSave(Admin admin);
	
	List<Admin> getAll(String keyword);
	
	void deleteAdmin(Integer adminId);
	
	void deleteBatchAdmins(List<Integer> ids);
	
	void updateAdmin(Admin admin);
	
	Admin selectByAdminId(Integer adminId);
	
	Set<String> findRolesByUserName(String adminAccount);

	
	
	
}
