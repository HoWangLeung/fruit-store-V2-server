//package com.wahkee.fruitStore.page.google;
//
//import java.util.List;
//
//import org.openqa.selenium.WebElement;
//import org.openqa.selenium.support.FindBy;
//import org.springframework.stereotype.Component;
//
//import com.wahkee.fruitStore.page.Base;
//@Component
//public class SearchResult extends Base {
//	
//	@FindBy(xpath = "//*[@data-hveid]")
//	private List<WebElement> results;
//	
//	public int getCount() {
//		return this.results.size();
//	}
//	
//	@Override
//	public boolean isAt() {
//		return this.wait.until((d)->!this.results.isEmpty());
//	}
//
//}
