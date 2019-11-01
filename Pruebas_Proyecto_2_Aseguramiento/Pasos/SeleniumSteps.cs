using System;
using TechTalk.SpecFlow;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System.IO;
using System.Reflection;

namespace Pruebas_Proyecto_2_Aseguramiento.Pasos
{
    [Binding]
    public class SeleniumSteps
    {
        private static IWebDriver driver;
        private StringBuilder verificationErrors;
        private static string baseURL;
        private bool acceptNextAlert = true;

        public SeleniumSteps()
        {
            var chromeOptions = new ChromeOptions();
            chromeOptions.AddArguments("headless");
            driver = new ChromeDriver(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), chromeOptions);
        }

        [Given(@"I am in login page ""(.*)""")]
        public void GivenIAmInLoginPage(string p0)
        {
            driver.Navigate().GoToUrl(p0);
        }
        
        [Given(@"I select by name ""(.*)""")]
        public void GivenISelectByName(string p0)
        {
            driver.FindElement(By.Name(p0)).Click();
        }
        
        [Given(@"I clean thenfield ""(.*)""")]
        public void GivenICleanThenfield(string p0)
        {
            driver.FindElement(By.Name(p0)).Clear();
        }
        
        [Given(@"I entry ""(.*)"" in the field ""(.*)""")]
        public void GivenIEntryInTheField(string p0, string p1)
        {
            driver.FindElement(By.Name(p1)).SendKeys(p0);
        }
        
        [Given(@"I click in the XPath ""(.*)""")]
        public void GivenIClickInTheXPath(string p0)
        {
            
            driver.FindElement(By.XPath(p0)).Click();
            Thread.Sleep(3000);
        }
        
        [Given(@"I click in the LinkText ""(.*)""")]
        public void GivenIClickInTheLinkText(string p0)
        {
            
            driver.FindElement(By.LinkText(p0)).Click();
            Thread.Sleep(3000);
        }
        
        [Given(@"I select the option ""(.*)"" of field ""(.*)""")]
        public void GivenISelectTheOptionOfField(string p0, string p1)
        {
            new SelectElement(driver.FindElement(By.Name(p1))).SelectByText(p0);
        }
        

        [Given(@"I entry (.*) in the field ""(.*)""")]
        public void GivenIEntryInTheField(int p0, string p1)
        {
            driver.FindElement(By.Name(p1)).SendKeys(p0.ToString());
        }


        [When(@"I press the name button ""(.*)""")]
        public void WhenIPressTheNameButton(string p0)
        {
            driver.FindElement(By.Name(p0)).Click();
            Thread.Sleep(5000);
        }

        [When(@"And I click in the XPath ""(.*)""")]
        public void WhenAndIClickInTheXPath(string p0)
        {
            driver.FindElement(By.XPath(p0)).Click();
            Thread.Sleep(3000);
        }




        [Then(@"the result should be ""(.*)"" in the class ""(.*)""")]
        public void ThenTheResultShouldBeInTheClass(string p0, string p1)
        {
            String xPath = driver.FindElement(By.XPath(p1)).GetAttribute("class");
            Assert.AreEqual(p0, xPath);
        }

    }
}
