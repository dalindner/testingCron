Given(/^I am on sign in page$/) do
	visit new_user_session_path
  #assert page.current_path == new_user_session_path
end

Given (/^a verified email$/) do
	visit confirmation_url(@resource, confirmation_token: @token)
end

Given (/^a valid user$/) do
  @user = User.create!({
             :email => "srkardell@gmail.com",
             :password => "Ilovethebears12",
             :password_confirmation => "Ilovethebears09",
             :name => "Steven Kardell",
             :age => "21",
             :gender => "male",
             :company => "software",
             :phoneNumber => "1234567890"
             

           })
  #visit new_confirmation_path(user)
  step "a verified email"
end

Given (/^a logged in user$/) do
  #step "a valid user"
  step "I am on sign in page"
  fill_in "Email", :with => "srkardell@gmail.com"
  fill_in "Password", :with => "Ilovethebears09"
  click_button "Log in"
end

Then(/^I am on the home page$/) do
  visit pages_index_path
end

When(/^I click Sign Out$/) do 
  #find("ul.dropdown-menu").click_link(arg1)
  #find_link(arg1).click

  visit destroy_user_session_path
  #click_button(arg1)
  #click_button arg1 
  #click_button arg1
  #page.find(:xpath, "//a[@href='/users/sign_out']").click
end

When(/^I click Edit Profile$/) do
  visit edit_user_registration_path
end

When(/^I click My Team$/) do
  visit account_teams_path
end

When(/^I click My Projects$/) do
  visit account_projects_path
end

Then(/^I should see My team page$/) do
  visit account_teams_path
end

Then(/^I should see My Projects page$/) do
  visit account_projects_path
end