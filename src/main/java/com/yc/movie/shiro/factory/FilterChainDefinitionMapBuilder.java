package com.yc.movie.shiro.factory;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		map.put("/adminLoginPage", "anon");
		map.put("/alogout", "logout");
		map.put("/adminIndex", "authc");
		map.put("admin/index.jsp", "authc");
		
		map.put("/adminadd", "authc,roles[superAdmin]");
		map.put("admin/adminadd.jsp", "authc,roles[superAdmin]");
		
		map.put("/admin", "authc,roles[superAdmin]");
		map.put("admin/adminupdate.jsp", "authc,roles[superAdmin]");
		
		map.put("/**", "anon");
		
		return map;
	}
}
