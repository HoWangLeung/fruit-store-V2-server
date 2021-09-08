package com.wahkee.fruitStore.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.testng.Assert;
import org.testng.annotations.Test;

import com.wahkee.fruitStore.SpringBaseTestNGTest;
import com.wahkee.fruitStore.page.google.GooglePage;

public class GoogleTest extends SpringBaseTestNGTest{
	
	@Autowired
	private GooglePage googlepage;
	
	@Test
	public void googleTest() {
	this.googlepage.goTo();
 	Assert.assertTrue(this.googlepage.isAt());
 	this.googlepage.getSearchComponent().search("spring boot");
 	Assert.assertTrue(this.googlepage.getSearchResult().isAt());
	Assert.assertTrue(this.googlepage.getSearchResult().getCount()>2);
		
}
	

}