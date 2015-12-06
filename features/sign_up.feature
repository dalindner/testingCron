Feature: Sign up for an account
	In order to create an account
	As a user
	I want to input all fields to create new user


	Scenario: Successful user creation
	Given I am on sign up page
	When I input my information
	Then I am on the home page
	And I am signed in

	Scenario: Successful admin creation
	Given I am on sign up page
	When I input my admin information
	Then I am on the home page
	And I am signed in

	Scenario: Successful leader creation
	Given I am on sign up page
	When I input my leader information
	Then I am on the home page
	And I am signed in

	Scenario: failed Sign up
	Given I am on sign up page
	When I input incorrect information
	Then I am on sign up page
	And I am not signed in