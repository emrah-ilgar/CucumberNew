package com.eurotech.pages;

import com.eurotech.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class ApplePage extends BasePage{

    public WebElement headerMenuName(String menuName){
        return Driver.get().findElement(By.xpath("//span[contains(text(),'"+menuName+"')]/.."));
    }
}
