Feature: Men's Outerwear 
  In order to purchase men's clothing
  As a customer 
  I want to see the men's clothes available for purchase

Scenario: Available menswear is listed on the Men's Outerwear page
  Given I am on polymer-project shop
  When I click to the men's outerwear
  Then the available men's clothing is listed for me
