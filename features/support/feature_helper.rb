# This module is used to handle repeating actions within Cucumber steps e.g. login or logout

module FeatureHelper
  def visit_homepage
    @homepage = Homepage.new
    @homepage.load
  end

  def get_current_page(page)
    @page = case page
            when 'Home'
              @homepage
            when 'Sign up'
              @signup_page
            when 'My account'
              @my_account_page
            else
              raise 'Only Home, My account and Sign up page are supported'
            end
  end

  def get_parent_class_attribute(element)
    element.find(:xpath, '..')['class']
  end

  def fill_signup_user_data(user)
    @signup_page.email.set        user.email
    @signup_page.password.set     user.password
    @signup_page.name.set         user.first_name
    @signup_page.surname.set      user.last_name
    @signup_page.date.select      user.date
    @signup_page.month.select     user.month
    @signup_page.year.select      user.year
    @signup_page.country.select   user.country
    @signup_page.address.set      user.address
    @signup_page.city.set         user.city
    @signup_page.postcode.set     user.postcode
  end

end

World(FeatureHelper)