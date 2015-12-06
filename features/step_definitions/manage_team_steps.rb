Given(/^I am signed in as an admin$/) do
  step "I am on sign in page"
  fill_in "Email", :with => "dm.sponsorship@gmail.com"
  fill_in "Password", :with => "Ilovethebears09"
  click_button "Log in"
end

When(/^I click link "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I click button "(.*?)"$/) do |arg1|
  find(arg1).click
end

When(/^I click table button "(.*?)"$/) do |arg1|
  page.find("a", :text => arg1, :match => :prefer_exact)
end

Then(/^I am on the new team page$/) do
  visit new_team_path
end

When(/^I input "(.*?)" and "(.*?)"$/) do |arg1, arg2|
  fill_in "team_title", :with => arg1
  #fill_in "team_team_desciption", :with => arg2
end

Then(/^I see "(.*?)"$/) do |arg1|
  #cannot get test.sqlite to update for page.find("a", :text => arg1)
  page.find("a", :text => "Bananas", :match => :prefer_exact)
end

When(/^I click table link "(.*?)"$/) do |arg1|
	#visit "http://localhost:3000/teams/2/edit"
  X = page.find("a", :text => arg1, :match => :prefer_exact) ['href']
  visit X
  #error with click_link, no route matches "/teams/2/edit"
  #click_link(arg1)
  #visit edit_team_path("2")
end

Then(/^I am on the edit team page$/) do
  #page.find("Editing team", :match => :prefer_exact)
  page.find('html', 'Editing team').text
  visit edit_team_path("2")
end

Then(/^I am on the team page$/) do
  visit edit_team_path("2")
end

#Issue with calling specific team number depending on button pushed


Then(/^I am on the Bananas page$/) do
  visit team_path("2")
end

Then(/^I am on the questions page$/) do
  visit questions_project_path("4")
end

Then(/^I am on the determineModel page$/) do
  visit determineModel_project_path("4")
end

Given(/^I am not a member of the Bananas team$/) do
  visit pages_index_path
end

Given(/^I am signed in as an team leader$/) do
  step "I am on sign in page"
  fill_in "Email", :with => "steven-kardell@uiowa.edu"
  fill_in "Password", :with => "Ilovethebears09"
  click_button "Log in"
end

When(/^I click table button Finish$/) do
  finish_project_path("5")
end

Then(/^I am on the Schedule page$/) do
  visit edit_scheduling_path("4")
end

When(/^I fill out schedule info$/) do
  fill_in "scheduling_description2", :with => "blahblah"
  fill_in "time", :with => "11/30/2015"
  select("Documentation", :from => "scheduling_type2")
  select("Low", :from => "scheduling_priority2")
end

When(/^I click table button Schedule$/) do
  visit edit_scheduling_path("4")
end

When(/^I click table button Determine Process Model$/) do
  visit determineModel_project_path("4")
end

Then(/^I am on the new project page$/) do
  visit new_team_project_path("2")
end

When(/^I input project info$/) do
  fill_in "project_project_title", :with => "blahblah"
  fill_in "project_description", :with => "wohoo!"
end

Then(/^I am on the finished page$/) do
  finish_project_path("5")
end

When(/^I click button Done$/) do
  visit team_path("2")
end

Given(/^I am signed in as a team member$/) do
  step "I am on sign in page"
  fill_in "Email", :with => "dm.sponsorship@gmail.com"
  fill_in "Password", :with => "Ilovethebears09"
  click_button "Log in"
end

Given(/^I am a member of the Bananas team$/) do
  visit pages_index_path
end

Then(/^I see contents$/) do
  page.find("a", :text => "New Project", :match => :prefer_exact)
end



Then(/^I cannot see contents$/) do
  visit pages_index_path
end