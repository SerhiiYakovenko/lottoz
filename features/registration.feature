Feature: User is able to register
  As a visitor
  I want to be able to register
  So I can become a Lottoz user

  Scenario: New User successfully register
     When I visit 'Home' page
     Then I am 'not' logged in visitor
     When I visit 'Sign up' page
     Then I see 'Email, Password, Name, Surname, Date, Month, Year, Country, Address, City, Postcode' fields are 'visible' at 'Sign up' page
      And I see correct page title at 'Sign up' page
     When I try to register with all fields are 'filled correctly'
     Then I am 'already' logged in visitor
     When I visit 'My account' page
     Then I see 'Personal details, My Games, My Transaction, Deposit, My Lucky numbers, Logout link' fields are 'visible' at 'My account' page