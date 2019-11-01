#language:en-us

Feature: login
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: login correct
	Given I am in login page "https://warehouse-inventory-system.azurewebsites.net/index.php"
	And I select by name "username"
	And I clean thenfield "username"
	And I entry "admin" in the field "username"
	And I select by name "password"
	And I clean thenfield "password"
	And I entry "admin" in the field "password"
	When I press the name button "entrar"
	Then the result should be "alert alert-success" in the class "(.//*[normalize-space(text()) and normalize-space(.)='Ventas diarias'])[1]/following::div[5]"

Scenario: login incorrect
	Given I am in login page "https://warehouse-inventory-system.azurewebsites.net/index.php"
	And I select by name "username"
	And I clean thenfield "username"
	And I entry "admin" in the field "username"
	And I select by name "password"
	And I clean thenfield "password"
	And I entry "admin2" in the field "password"
	When I press the name button "entrar"
	Then the result should be "alert alert-danger" in the class "(.//*[normalize-space(text()) and normalize-space(.)='Bienvenido'])[1]/following::div[1]"