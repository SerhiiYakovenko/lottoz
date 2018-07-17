class MyAccountPage < SitePrism::Page

  set_url '/myaccount'

  # ELEMENTS
  element :personal_details, "li[class*='icon-details']"
  element :my_games,         "li[class*='icon-games']"
  element :my_transaction,   "li[class*='icon-transaction']"
  element :deposit,          "li[class*='icon-withdraw']"
  element :my_lucky_numbers, "li[class*='icon-lucky']"
  element :logout_link,      "li[class*='icon-logout']"
end