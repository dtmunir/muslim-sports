Then /^I should see a login page$/ do
  page.should have_content "Email"
  page.should have_content "Password"
  
end

Given /^I login with valid user data$/ do
  user = User.create(:email => "test@example.com", :password => "safepass")
  user.confirm!
  fill_in('Email', :with => user.email)
  fill_in('Password', :with => user.password)
  click_button("Sign in")
end

Then /^I should see a successful sign in message$/ do
  page.should have_content "Signed in successfully"
end

=begin
When /^I login with invalid email$/ do
  fill_in('Email', :with => "exampleexample.com")
  fill_in('password', :with => user.password)
  click_button("Sign in")
end

Then /^I should see an invalid email message$/ do
  page.should have_content "Email is invalid"
end
=end


When /^I login with invalid credentials$/ do
  fill_in('Email', :with => "example@example.com")
  fill_in('Password', :with => 'alkjhsj')
  click_button("Sign in")
end

Then /^I should see an invalid credential message$/ do
  page.should have_content "Invalid email or password"
end