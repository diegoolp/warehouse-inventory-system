#language:en-us

Feature: productos
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: add new product
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
	And I click in the LinkText "Administrar productos"
	And I click in the LinkText "AGRAGAR PRODUCTO"
	And I select by name "product-title"
	And I clean thenfield "product-title"
	And I entry "producto prueba" in the field "product-title"
	And I select by name "product-categorie"
	And I select the option "Repuestos" of field "product-categorie"
	And I select by name "product-categorie"
	And I select by name "product-photo"
	And I select the option "filter.jpg" of field "product-photo"
	And I select by name "product-photo"
	And I select by name "product-quantity"
	And I clean thenfield "product-quantity"
	And I entry 10 in the field "product-quantity"
	And I click in the XPath "(.//*[normalize-space(text()) and normalize-space(.)='Agregar producto'])[2]/following::form[1]"
	And I select by name "buying-price"
	And I clean thenfield "buying-price"
	And I entry 25 in the field "buying-price"
	And I select by name "saleing-price"
	And I clean thenfield "saleing-price"
	And I entry 100 in the field "saleing-price"
	When I press the name button "add_product"
	Then the result should be "alert alert-success" in the class "(.//*[normalize-space(text()) and normalize-space(.)='Ventas diarias'])[1]/following::div[5]"