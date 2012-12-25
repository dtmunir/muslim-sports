Given /^the following Leagues exist$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    League.create!(attributes)
  end
end

When /^I visits the league page$/ do
  visit "/leagues"
end

When /^I click "(.*?)"$/ do |link_text|
  click_link(link_text)
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content text
end