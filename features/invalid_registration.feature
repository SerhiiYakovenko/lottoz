Feature: Visitor enters invalid registration credentials
  As a visitor
  I want to see error messages on wrong registration credentials
  So I can understand what is happening

  Background:
    Given I visit 'Sign up' page

  Scenario: Visitor tries to register with all fields empty
     When I try to register with all fields are 'empty'
     Then I see 'Email, Password, Name, Surname, Address, City, Postcode' fields are 'required' at 'Sign up' page

  Scenario: Visitor tries to register with wrong password pattern
     When I try to register user with wrong 'password' pattern
     Then I see Error message: for 'password' field at 'Sign up' page

  Scenario: Visitor tries to register with wrong email pattern
    When I try to register user with wrong 'email' pattern
    Then I see Error message: for 'email' field at 'Sign up' page

  Scenario: Visitor tries to register with wrong age pattern
    When I try to register user with wrong 'age' pattern
    Then I see Error message: for 'age' field at 'Sign up' page