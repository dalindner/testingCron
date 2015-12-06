class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :admin_required, only: [:new, :create, :addto, :kickout]

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
      @team = Team.find(params[:id])
      if !current_user.role == "Admin" 
        if !current_user.is_member_of?(@team)
            flash[:warning] = "You are not a member or admin！"
            redirect_to team_path
        end
      end  
  end

  def create
    @team = current_user.teams.new(team_params)

    if @team.save
      redirect_to root_path
    else  
      render :new
    end  
   # respond_with(@team)
  end

  def update
     @team = Team.find(params[:id])

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
       current_user.inteam = true
       current_user.save
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
       current_user.inteam = false
       current_user.save
        flash[:alert] = "Quit successfully！"
      else
        flash[:warning] = "You are not in this team XD"
      end

   redirect_to root_path(@team)
 end
def addto
    @team = Team.find(params[:id])
    @user = User.find(params[:id3])

     if (!@user.is_member_of?(@team))or ()
       @user.join!(@team)
       @user.inteam = true
        @user.save
        flash[:notice] = "Successfully add to the team！"
      else
        flash[:warning] = "Already in this team！"
      end

    redirect_to team_path(@team)
 end
 def kickout
    @team = Team.find(params[:id])
    @user = User.find(params[:id2])

      if @user.is_member_of?(@team)
        @user.quit!(@team)
        @user.inteam = false
        @user.save
        flash[:alert] = "Kick him out successfully！"
      else
        flash[:warning] = "He is not in this team XD"
      end

   redirect_to team_path(@team)
 end

  private

    def team_params
      params.require(:team).permit(:title, :team_description)
    end

    def admin_required
      if !current_user.role == "Admin"
        flash[:warning] = "You are not admin,cannot create team！"
        redirect_to root_path
      end
    end
end
