Given(/^I am on the Google homepage$/) do
  visit 'https://www.google.com.tr'
end

Then(/^I will search for "([^"]*)"$/) do |searchText|
  fill_in 'lst-ib', :with => searchText
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  page.should have_content(expectedText)
end

Then(/^I will click the CMYLMZ link$/) do
  click_link('CMYLMZ')
end



Given(/^I am at Twitter loginpage$/) do
  visit 'https://twitter.com/login?lang=tr'
end

When(/^I type username: "([^"]*)" and password: "([^"]*)"$/) do |username, password|
  fill_in 'Username', :with => username
  fill_in 'Password', :with => password
  click_on 'Giriş yap'
  xpath('//button')
end

Then(/^I can see my account with "([^"]*)"$/) do |username|
  sleep 5
  page.should have_content(username)
end
