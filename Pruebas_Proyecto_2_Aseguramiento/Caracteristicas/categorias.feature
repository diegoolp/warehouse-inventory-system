#language:en-us

Feature: categorias
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Add new category
	Given I am in login page "https://warehouse-inventory-system.azurewebsites.net/index.php" 
	And I select by name "username"
	And I clean thenfield "username"
	And I entry "admin" in the field "username"
	And I select by name "password"
	And I clean thenfield "password"
	And I entry "admin" in the field "password"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Bienvenido'])[1]/following::form[1]"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Contraseña'])[1]/following::button[1]"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Categorías'])[1]/following::span[1]"
	And I click in the LinkText "Categorías"
	And I select by name "categorie-name"
	And I clean thenfield "categorie-name"
	And I entry "Categoria prueba auto" in the field "categorie-name"
	When I press the name button "add_cat"
	Then the result should be "alert alert-success" in the class "(.//*[normalize-space(text()) and normalize-space(.)='Ventas diarias'])[1]/following::div[5]"

Scenario: Delete category
	Given I am in login page "https://warehouse-inventory-system.azurewebsites.net/index.php" 
	And I select by name "username"
	And I clean thenfield "username"
	And I entry "admin" in the field "username"
	And I select by name "password"
	And I clean thenfield "password"
	And I entry "admin" in the field "password"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Bienvenido'])[1]/following::form[1]"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Contraseña'])[1]/following::button[1]"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Categorías'])[1]/following::span[1]"
	And I click in the LinkText "Categorías"
	When And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Categoria prueba auto'])[1]/following::a[2]"
	Then the result should be "alert alert-success" in the class "(.//*[normalize-space(text()) and normalize-space(.)='Ventas diarias'])[1]/following::div[5]"