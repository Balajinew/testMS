package com.gcp.learning.testMS;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class BasicController {
	
	@GetMapping("/hello")
	public String getHello()
	{
		return "Hello";
	}

}
