package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllerClass {

	@RequestMapping("/view")
	public String display() {
		return "Hi all, How are you?";
	}
	
	@RequestMapping("/view1")
	public  String display2() {
		return "I am fine";
	}
	
	@RequestMapping("/view2")
	public  String display3() {
		return "I too good";
	}
}
