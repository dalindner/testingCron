class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_team
  before_action :member_required, only: [:new, :create ]
#  respond_to :html

  def index
    @projects = current_user.projects.order("updated_at DESC")
    #respond_with(@projects)
  end

  def show
    @project = @team.projects.find(params[:id])
    #respond_with(@project)
  end

  def new
    #@team = Team.find(params[:team_id])
    @project = @team.projects.new
   # respond_with(@project)
  end

  def edit
     #@team = Team.find(params[:team_id])
     @project = @team.projects.find(params[:id])
    # @project = current_user.projects.find(params[:id])
  end

  def staffing
  end

  def questions
  end


  def create
    #@team = Team.find(params[:team_id])
    @project = @team.projects.build(project_params)
   # @project.author = current_user

   if @project.save
     redirect_to team_path(@team), notice: "New Project successfully created！"
   else
     render :new
   end
   # @project = Project.new(project_params)
   # @project.creater_id = current_user.id
   # @project.save
   # respond_with(@project)
  end

  def update
    @project = @team.projects.find(params[:id])
   # @project = current_user.projects.find(params[:id])

   if @project.update(project_params)
     redirect_to team_path(@team), notice: "Updated successfully！"
   else
     render :edit
   end
  end

  def destroy
   @project = @team.projects.find(params[:id])
   #@project = current_user.projects.find(params[:id])

   @project.destroy
   redirect_to team_path(@team), alert: "Project has been destroyed!"
    #@project.destroy
    #respond_to do |format|
    #  format.html { redirect_to questions_url, notice: 'Project was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
  end
def join
    @project = Project.find(params[:id])

     if !current_user.is_member_of?(@team)
       current_user.join!(@project)
        flash[:notice] = "Successfully joined in this project！"
      else
        flash[:warning] = "You are already in this project！"
      end

    redirect_to project_path(@project)
 end

 def quit
    @project = Project.find(params[:id])

      if current_user.is_member_of?(@team)
        current_user.quit!(@team)
        flash[:alert] = "Quit this project successfully！"
      else
        flash[:warning] = "You are not in this project XD"
      end

   redirect_to project_path(@project)
 end

  private

    def member_required
      if !current_user.is_member_of?(@team)
        flash[:warning] = "You are not a member,cannot create project！"
        redirect_to team_path(@team)
      end
    end

    def find_team
      if(:id != "staffing")
        @team = Team.find(params[:team_id])
      end
    end

    def project_params
      params.require(:project).permit(:project_title, :description)
    end
    
    #def set_project
    #  if(:id != "staffing")
    #    @project = Project.find(params[:id])
    #  end
    #end
end
