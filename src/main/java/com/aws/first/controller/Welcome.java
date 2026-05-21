package com.aws.first.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Welcome {

    @GetMapping("/welcome")
    public String welcome(){
        return "Welcome to JAVA";
    }
	
	@GetMapping("/welcometojenkins")
    public String welcomeToJenkins(){
        return "Welcome to Jenkins";
    }
	
	@GetMapping("/sayhello")
    public String sayHello(){
        return "Hello User";
    }

}
