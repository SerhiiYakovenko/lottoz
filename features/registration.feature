#Feature: User is able to register
#  As a visitor
#  I want to be able to register
#  So I can become a Lottoz user
#
#  Scenario: New User successfully register
#    Given I am not logged in visitor
#      And I visit 'Sign up page'
#     Then I see 'Email, Password, Name, Surname, Date, Month, Year, Country, Address, City, Postcode' fields are 'visible' at 'Sign up' page
#     Then Sign up page is displayed correctly
#     When I enter correct Sign up credentials at Sign up page
#     Then I become 'logged in CCT Agent'