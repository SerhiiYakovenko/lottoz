When('I try to register with all fields are empty') do
  # Usually I prefer to use .click method, but this time
  # something strange happened with this button
  @signup_page.submit_btn.send_keys :enter
end

When(/^I try to register user with wrong '([^"]*)' pattern$/) do |item|
  @user = User.new
  random_string = (0...10).map { ('a'..'z').to_a[rand(26)] }.join
  case item
  when 'password'
    @user.password = random_string
  when 'email'
    @user.email = random_string
  when 'age'
    @user.month = 'December'
    @user.year = '2000'
  else
    raise 'Only password, email and age error patterns are supported'
  end

  fill_signup_user_data(@user)
  @signup_page.submit_btn.send_keys :enter
end