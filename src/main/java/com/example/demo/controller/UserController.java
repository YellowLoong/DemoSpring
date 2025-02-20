package com.example.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.modal.User;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("john", "Toi Ten la john");
        return "hello";
    }

    @RequestMapping("/admin/user/create")
    public String getUserCreatePage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> userList = this.userService.getAllUser();
        model.addAttribute("userList", userList);
        return "admin/user/show";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User newbruh) {
        this.userService.handleSaveUser(newbruh);
        return "redirect:/admin/user";
    }
}
