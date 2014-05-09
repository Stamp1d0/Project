package com.lifeproject.entity;

import javax.persistence.*;

@Entity
@Table(name="tbl_users")
public class UserEntity {
     
    @Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;
     
    @Column(name="username")
    private String username;
 
    @Column(name="password")
    private String password;

    @Column(name="rolename")
    private String rolename;

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    @Column(name="enabled")
    private int enabled;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}