Feature: account login
	In order to sign in to an account
	As a user
	I want to input my email and password and click log in


	Scenario: Successful user login
	Given I am on sign in page
	And a logged in user
	Then I am on the home page


	Scenario: Successful user logout
	Given a logged in user
	And I am on the home page
	When I click Sign Out
	And I am on the home page

	Scenario: Check User Team
	Given a logged in user
	And I am on the home page
	When I click My Team
	Then I should see My team page

	Scenario: Check User Projects
	Given a logged in user
	And I am on the home page
	When I click My Projects
	Then I should see My Projects page




