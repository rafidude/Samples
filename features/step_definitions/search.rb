Given /^I have opened "([^\"]*)"$/ do |url|
  visit url
end

When /^I search Google for "([^\"]*)"$/ do |query|
  fill_in "q", :with => query
  click_button "Google Search"
end

Then /^I should see a link to "([^\"]*)" with text "([^\"]*)"$/ do |url, text|
  response_body.should have_selector("a[href='#{ url }']") do |element|
    element.should contain(text)
  end
end