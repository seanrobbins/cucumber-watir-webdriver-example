Feature: Checkout 
  In order to successfully purchase clothes I like
  As a customer
  I want to be able to submit my delivery and payment details
  And receive confirmation that the order has been accepted

Scenario: Successfully checkout selected items
  Given I have some items in my basket
  Then I can successfully checkout
