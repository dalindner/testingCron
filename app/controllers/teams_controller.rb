class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
 
  def index
    @teams = Team.all
    #respond_with(@teams)
  end

  def new
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
    @projects = @team.projects
  end

  def edit
      @team = current_user.teams.find(params[:id])
      if !current_user.is_member_of?(@team)
        flash[:warning] = "You are not a member！"
        redirect_to team_path
      end  
  end

  def create
    @team = current_user.teams.new(team_params)

    if @team.save
      current_user.join!(@team)
      redirect_to root_path
    else
      render :new
    end  
   # respond_with(@team)
  end

  def update
     @team = current_user.teams.find(params[:id])

   if @team.update(team_params)
     redirect_to team_path, notice: "Updated successfully!"
   else
     render :edit
   end
   # @team.update(team_params)
   # respond_with(@team)
  end

  def destroy
   @team = current_user.teams.find(params[:id])
   @team.destroy
   redirect_to root_path, alert: "The team was destroyed"
  end

 def join
    @team = Team.find(params[:id])

     if !current_user.is_member_of?(@team)
       current_user.join!(@team)
        flash[:notice] = "Successfully joined us！"
      else
        flash[:warning] = "You are already a member！"
      end

    redirect_to team_path(@team)
 end

 def quit
    @team = Team.find(params[:id])

      if current_user.is_member_of?(@team)
        current_user.quit!(@team)
        flash[:alert] = "Quit successfully！"
      else
        flash[:warning] = "You are not in this team XD"
      end

   redirect_to root_path(@team)
 end

  private

  def team_params
      params.require(:team).permit(:title, :team_description)
  end
end
