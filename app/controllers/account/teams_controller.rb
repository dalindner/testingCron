class Account::TeamsController < ApplicationController
 before_action :authenticate_user!

 def index
   @teams = current_user.participated_teams
 end
end
