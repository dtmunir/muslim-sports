Given /^I am on the homepage$/ do
  visit "/"
end

Given /^I visit the "(.*?)" link$/ do |link_text|
  click_link link_text
end

Then /^I should see a sign up page$/ do
  page.should have_content "Email"
  page.should have_content "Password"
  page.should have_content "Password confirmation"
end

When /^I sign up with valid user data$/ do
  puts "I am on: " + current_path
  fill_in('Email', :with => 'test@example.com')
  fill_in('user_password', :with => "abcdefg")
  fill_in('Password confirmation', :with => "abcdefg")
  click_button("Sign up")
end

Then /^I should see a successful sign up message$/ do
  page.should have_content "Welcome! You have signed up successfully."

end

When /^I sign up with invalid email$/ do
  fill_in('Email', :with => 'testexample.com')
  fill_in('user_password', :with => "abcdefg")
  fill_in('Password confirmation', :with => "abcdefg")
  click_button("Sign up")

end

Then /^I should see an invalid email message$/ do
  page.should have_content "Email is invalid"
end

When /^I sign up with invalid password$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see an invalid password$/ do
  pending # express the regexp above with the code you wish you had
end