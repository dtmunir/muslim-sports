When /^I visit the home page$/ do
  visit "/"
end

Then /^I see a "(.*?)" link$/ do |link_text|
  page.should have_content link_text
end