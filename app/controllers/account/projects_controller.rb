class Account::ProjectsController < ApplicationController
 before_action :authenticate_user!

 def index
     Team = current_user.participated_teams.all
  	 Team.all.each do |project|
  	 	

 end
end
