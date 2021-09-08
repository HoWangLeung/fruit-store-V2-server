package com.wahkee.fruitStore.config;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.github.bonigarcia.wdm.WebDriverManager;


@Configuration
public class WebDriverCongfig {
	
	@Value("${default.timeout:30}")
	private int timeout;
	
	@Bean
	public WebDriver chromeDriver() {
		WebDriverManager.chromedriver().version("92.0.4515.107").setup();
		return new ChromeDriver();
		
	}
	
	@Bean
	public WebDriverWait webDriverWait(WebDriver webDriver) {
		return new WebDriverWait(webDriver,timeout);
	}

}
