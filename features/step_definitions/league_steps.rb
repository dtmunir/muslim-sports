Given /^the following Leagues exist$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    League.create!(attributes)
  end
end

When /^I visit the league page$/ do
  visit "/leagues"
end

When /^I click "(.*?)"$/ do |link_text|
  click_link(link_text)
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content text
end

When /^I create the following league$/ do |table|
	table.hashes.each do |attributes|
    League.create!(attributes)
  end
 end


When /^I change the name to "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
