class Account::ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
	    @teams = current_user.participated_teams
	    @i = 1
	  	@teams.each do |team|
	  		#@projects = team.projects
	  		@projects = Project.where(:id => @i)
	  		@i = @i + 1
	  	end	
	  	
	end
end
