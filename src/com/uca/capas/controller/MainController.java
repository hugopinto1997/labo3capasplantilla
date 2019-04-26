package com.uca.capas.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Student;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("message", "Bienvenidos a spring");
		return mav;
	}

	@RequestMapping("/form")
	public ModelAndView formData(@RequestParam(value ="name")String name, @RequestParam(value= "lname")String lName,
			@RequestParam(value ="bdate") Date bDate, @RequestParam(value ="career") String career, @RequestParam(value= "experience") String experience) {
		ModelAndView mav = new ModelAndView();
		Student student = new Student ();
		student.setName(name);
		student.setLastName(lName);
		student.setbDate(new SimpleDateFormat("MM/dd/yy").format(bDate).toString());
		student.setCareer(career);
		student.setExperience(experience);
		mav.setViewName("form");
		mav.addObject("student", student);
		return mav;
	}
		
	
}
