Given(/^I visit '([^"]*)' page$/) do |page|
  case page
  when 'Homepage'
    visit_homepage
  when 'Sign up'
    @signup_page = SignupPage.new
    @signup_page.load
  when 'My account'
    @my_account_page = MyAccountPage.new
    @my_account_page.load
  else
    raise 'Only Homepage, My account and Sign up page are supported'
  end
end

Then(/^I am '([^"]*)' logged in visitor$/) do |status|
  case status
  when 'not'
    expect(@homepage.not_logged_user_logo).to be_visible
  when 'already'
    expect(@homepage.logged_user_logo).to be_visible
  else
    raise 'Only not or already logged in status is supported'
  end
end

Then(/^I see '([^"]*)' fields are '([^"]*)' at '([^"]*)' page$/) do |fields, status, page|
  get_current_page(page)
  fields = fields.downcase.split(', ')
  fields.map! { |field| field.tr(' ', '_') }

  case status
  when 'visible'
    fields.each { |field| expect(@page.send(field)).to be_visible }
  when 'invisible'
    fields.each { |field| expect(@page.send(field)).not_to be_visible }
  when 'required'
    fields.each { |field| expect(get_parent_class_attribute(@page.send(field))).to have_content 'has-error' }
  else
    raise 'Only such statuses are supported: visible, invisible, required'
  end
end

Then(/^I see Error message: for '([^"]*)' field at '([^"]*)' page$/) do |field, page|
  get_current_page(page)

  error = case field
          when 'password'
            DEFAULTS['Errors']['password']
          when 'email'
            DEFAULTS['Errors']['email']
          when 'age'
            DEFAULTS['Errors']['age']
          else
            raise 'Only password, email and age error patterns are supported'
          end

  expect(@page.signup_body).to have_content error
end