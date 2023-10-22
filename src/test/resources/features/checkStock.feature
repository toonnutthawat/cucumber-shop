Feature: Check Stock
  As a vendor
  I want to check stock

  Background:
    Given the store is ready to service customers
    And a product "Rice" with price 70.00 and stock of 4 exists
    And a product "Pepsi" with price 70.00 and stock of 20 exists

  Scenario: Check stock of pepsi
    When I buy "Pepsi" with quantity 5
    Then total stock of "Pepsi" should be 15

  Scenario: Check stock of Rice
    When I buy "Rice" with quantity 3
    Then total stock of "Rice" should be 1