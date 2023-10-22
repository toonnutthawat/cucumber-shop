Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Rice" with price 70.00 and stock of 4 exists


Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    Then total stock of "Bread" should be 3


Scenario: Buy Rice
    When I buy "Rice" with quantity 1
    Then total should be 70.00
    Then total stock of "Rice" should be 3

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00
    Then total stock of "Jam" should be 9

