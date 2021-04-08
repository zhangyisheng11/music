package com.yisheng.music.controllers;

import com.yisheng.music.models.User;
import com.yisheng.music.repositories.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping
    public List<User> list() {
        return userRepository.findAll();
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String login(@RequestParam("name") String name, @RequestParam("password") String password) {
        User user=new User();
        user=userRepository.findByName(name);

        try {
            if (user.getPassword().equals(password)){
                return "Success login";
            }else{
                return "Wrong Password";
            }
        }catch ( Exception e){
            return "not sign up";
        }
    }
}
