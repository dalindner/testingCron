Given(/^I am on sign up page$/) do
  visit new_user_registration_path
end

When(/^I input my information$/) do
  fill_in "user_name", :with => "Steven"
  fill_in "user_company", :with => "Software"
  fill_in "user_phoneNumber", :with => "1234567890"
  fill_in "user_email", :with => "srkardell@gmail.com"
  fill_in "user_password", :with => "Qwert1234"
  fill_in "user_password_confirmation", :with => "Qwert1234"
  select("21", :from => "user_age")
  select("Male", :from => "user_gender")
  select("Team Member", :from => "user_role")
  select("Member - Tester", :from => "user_specialty")
  click_button "Sign up"


end

Then(/^I am signed in$/) do
  visit pages_index_path
end

When(/^I input my admin information$/) do
  fill_in "user_name", :with => "Steven"
  fill_in "user_company", :with => "Software"
  fill_in "user_phoneNumber", :with => "1234567890"
  fill_in "user_email", :with => "srkardell@gmail.com"
  fill_in "user_password", :with => "Qwert1234"
  fill_in "user_password_confirmation", :with => "Qwert1234"
  fill_in "user_inputId", :with => "12"
  select("21", :from => "user_age")
  select("Male", :from => "user_gender")
  select("Admin", :from => "user_role")
  select("Member - Tester", :from => "user_specialty")
  click_button "Sign up"
end


When(/^I input my leader information$/) do
  fill_in "user_name", :with => "Steven"
  fill_in "user_company", :with => "Software"
  fill_in "user_phoneNumber", :with => "1234567890"
  fill_in "user_email", :with => "srkardell@gmail.com"
  fill_in "user_password", :with => "Qwert1234"
  fill_in "user_password_confirmation", :with => "Qwert1234"
  fill_in "user_inputId", :with => "12345"
  select("21", :from => "user_age")
  select("Male", :from => "user_gender")
  select("Admin", :from => "user_role")
  select("Member - Tester", :from => "user_specialty")
  click_button "Sign up"
end

When(/^I input incorrect information$/) do
  fill_in "user_name", :with => "Steven"
  fill_in "user_company", :with => "Software"
  fill_in "user_phoneNumber", :with => "1234567890"
  fill_in "user_email", :with => "srkardell@gmail.com"
  click_button "Sign up"
end

Then(/^I am not signed in$/) do
  visit new_user_registration_path
end