Feature: Ladies Outerwear 
  In order to purchase ladies clothing
  As a customer 
  I want to see the ladies clothes available for purchase

Scenario: Available ladieswear is listed on the Ladies Outerwear page
  Given I am on polymer-project shop
  When I click to the ladies outerwear
  Then the available ladies clothing is listed for me
