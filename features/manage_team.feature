Feature: Manage a team
  In order to manage a team
  As an Admin
  I want to manage a team 



  Scenario: Successful team creation
	Given I am signed in as an admin
	And I am on the home page
	When I click button "Create a New Team"
	Then I am on the new team page
	When I input "title" and "description"
	And I click button "Submit"
	Then I am on the home page
	And I see "peaches"



  Scenario: Successful add team member
  	Given I am signed in as an admin
  	And I am on the home page
  	When I click table link "Edit team - Bananas"
  	Then I am on the edit team page
  	When I click table button "Add to This Team"
  	Then I am on the team page


  Scenario: Kick out team member
  	Given I am signed in as an admin
  	And I am on the home page
  	When I click table link "Edit team - Bananas"
  	Then I am on the edit team page
  	When I click table button "Kick out From Team"
  	Then I am on the team page


  Scenario: Determine process model
    Given I am signed in as an team leader
  	And I am on the home page
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	When I click table button Determine Process Model
  	Then I am on the questions page
  	When I click link "Determine Process Model"
  	Then I am on the determineModel page
  	When I click button "Update Process Model"
  	Then I am on the home page


  Scenario: Successful Scheduling
  	Given I am signed in as an team leader
  	And I am on the home page
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	When I click table button Schedule
  	Then I am on the Schedule page
  	When I fill out schedule info
  	And I click button "Update Scheduling"
  	Then I am on the Schedule page

  Scenario: Successful Project Creation
    Given I am signed in as an admin
  	And I am on the home page
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	When I click table button "New Project"
  	Then I am on the new project page
  	When I input project info
  	And I click button "Submit"
  	Then I am on the Bananas page

  	Scenario: Finish Project
  	Given I am signed in as an team leader
  	And I am on the home page
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	When I click table button Finish
  	Then I am on the finished page
  	When I click button Done
  	Then I am on the Bananas page


  	Scenario: View team page as member
  	Given I am signed in as a team member
  	And I am on the home page
  	And I am a member of the Bananas team
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	And I see contents


  	Scenario: View team page as not a member
  	Given I am signed in as a team member
  	And I am on the home page
  	And I am not a member of the Bananas team
  	When I click table link "Bananas"
  	Then I am on the Bananas page
  	And I cannot see contents