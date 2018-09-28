package com.yc.movie.bean;

public class Role {
    private Integer roleId;

    private String roleName;

    private String roleUsers;

    private String roleDesc;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleUsers() {
        return roleUsers;
    }

    public void setRoleUsers(String roleUsers) {
        this.roleUsers = roleUsers == null ? null : roleUsers.trim();
    }

    public String getRoleDesc() {
        return roleDesc;
    }

    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc == null ? null : roleDesc.trim();
    }
}