package com.lifeproject.controller;

import com.lifeproject.entity.EmployeeEntity;
import com.lifeproject.entity.UserEntity;
import com.lifeproject.model.RegisterModel;
import com.lifeproject.service.EmployeeManager;
import com.lifeproject.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        return "life";
    }

    @RequestMapping(value = "/messages", method = RequestMethod.GET)
    public String messages(ModelMap map) {
        map.addAttribute("username", userManager.getCurrentUserName());
        return "messages";
    }

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listEmployees(ModelMap map) {
        map.addAttribute("username", userManager.getCurrentUserName());
		map.addAttribute("userList", userManager.getAllUsers());
		return "editUserList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute(value = "employee") EmployeeEntity employee,BindingResult result) {
		employeeManager.addEmployee(employee);
		return "redirect:/list";
	}

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap map) {
        map.addAttribute("reg", new RegisterModel());
        return "register";
    }


    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(@ModelAttribute(value = "reg") RegisterModel reg,BindingResult result) {
        UserEntity user = new UserEntity();
        user.setEnabled(1);
        user.setRolename("ROLE_USER");
        user.setUsername(reg.getUsername());
        user.setPassword(reg.getPassword());
        userManager.addUser(user);
        return "redirect:/life";
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
		return "logout";
	}
}
