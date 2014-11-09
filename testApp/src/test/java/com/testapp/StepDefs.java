package com.testapp;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.Assert.assertEquals;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefs {

	private WebDriver driver;
	
	@Given("^I provide an input$")
	public void I_provide_an_input() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	  //  throw new PendingException();
		System.out.println("given");
		System.setProperty("webdriver.chrome.driver",
				"C:/Users/User/Downloads/chromedriver_win32/chromedriver.exe");
		
		driver = new ChromeDriver();
		driver.navigate().to("http://localhost:8080/testApp/");
		driver.manage().window().maximize();
		Thread.sleep(1000); // Wait for page load
	}

	@When("^I click login$")
	public void I_click_login() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	   // throw new PendingException();
		driver.findElement(
				By.xpath("/html/body/form/input"))
				.click();

		Thread.sleep(1000);

		System.out.println("when");
	}

	@Then("^say hello$")
	public void say_hello() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	   // throw new PendingException();
		String val = (driver.findElement(By.xpath("/html/body")).getText());
		
		assertEquals(val,"Submit worked");
		driver.close();
		System.out.println("then");
	}


	
}
