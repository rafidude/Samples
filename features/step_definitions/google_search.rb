require 'rubygems'
require 'watir'

browser = Watir::IE.new
path = "http://google.com"

Given /^that I am on the Google Home Page$/ do
  browser.goto(path)
end

When /^I search for (.*)$/ do |search_string|
  browser.text_field(:name, "q").set(search_string)
  sleep 1
  browser.button(:name, "btnG").click
  sleep 1
end

Then /^I should see "([^\"]*)"$/ do |arg1|
  puts "Success" if browser.text.include?(arg1) == true
  sleep 2
  browser.close
end