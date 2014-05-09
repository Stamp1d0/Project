package com.lifeproject.controller;

import com.lifeproject.entity.EmployeeEntity;
import com.lifeproject.entity.UserEntity;
import com.lifeproject.model.RegisterModel;
import com.lifeproject.service.EmployeeManager;
import com.lifeproject.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class EditEmployeeController {

    @Autowired
    private EmployeeManager employeeManager;
    @Autowired
    private UserManager userManager;

    public void setEmployeeManager(EmployeeManager employeeManager) {
        this.employeeManager = employeeManager;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String defaultPage(ModelMap map) {
        return "redirect:/life";
    }

    @RequestMapping(value = "/life", method = RequestMethod.GET)
    public String life(ModelMap map) {
        map.addAttribute("username", userManager.getCurrentUserName());
        if (userManager.getCurrentUserRole().compareTo("ROLE_ADMIN")==0)
        {
            map.addAttribute("isAdmin",true);
        }
        return "life";
    }

    @RequestMapping(value = "/messages", method = RequestMethod.GET)
    public String messages(ModelMap map) {
        map.addAttribute("username", userManager.getCurrentUserName());
        if (userManager.getCurrentUserRole().compareTo("ROLE_ADMIN")==0)
        {
            map.addAttribute("isAdmin",true);
        }
        return "messages";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listEmployees(ModelMap map) {
        map.addAttribute("username", userManager.getCurrentUserName());
        map.addAttribute("userList", userManager.getAllUsers());
        if (userManager.getCurrentUserRole().compareTo("ROLE_ADMIN")==0)
        {
            map.addAttribute("isAdmin",true);
        }
        return "editUserList";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute(value = "employee") EmployeeEntity employee, BindingResult result) {
        employeeManager.addEmployee(employee);
        return "redirect:/list";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap map) {
        map.addAttribute("reg", new RegisterModel());
        return "register";
    }


    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(ModelMap map, @ModelAttribute(value = "reg") RegisterModel reg, BindingResult result) {
        List<UserEntity> users = userManager.getAllUsers();
        boolean hasUser = false;
        for (UserEntity user : users) {
            if (user.getUsername().toLowerCase().compareTo(reg.getUsername().toLowerCase())==0) {
                hasUser = true;
            }
        }
        if (!hasUser) {
            UserEntity user = new UserEntity();
            user.setEnabled(1);
            user.setRolename("ROLE_USER");
            user.setUsername(reg.getUsername());
            user.setPassword(reg.getPassword());
            userManager.addUser(user);
            return "redirect:/life";
        } else {
            map.addAttribute("error", "User already exists");
            return "register";
        }
    }

    @RequestMapping("/delete/{userId}")
    public String deleteEmplyee(@PathVariable("userId") Integer userId) {
        userManager.deleteUser(userId);
        return "redirect:/list";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "login";
    }

    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "denied";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
        SecurityContextHolder.getContext().setAuthentication(null);
        return "login";
    }
}
