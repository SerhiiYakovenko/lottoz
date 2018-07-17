class SignupPage < SitePrism::Page

  set_url '/signup'

  # ELEMENTS
  element :signup_body,     "div[class='signup-component']"
  element :email,           '#signup-email'
  element :password,        '#signup-password'
  element :name,            '#signup-name'
  element :surname,         '#signup-surname'
  element :date,            '#dayOfBirth'
  element :month,           '#monthOfBirth'
  element :year,            '#yearOfBirth'
  element :country,         '#country'
  element :address,         '#signup-address'
  element :city,            '#signup-city'
  element :postcode,        '#signup-postcode'
  element :submit_btn,      "button[type='submit']"

end