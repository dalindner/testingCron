class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :staffing, :questions]

  respond_to :html

  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
  end

  def staffing
  end

  def questions
  end


  def create
    @project = Project.new(project_params)
    @project.creater_id = current_user.id
    @project.save
    respond_with(@project)
  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      if(:id != "staffing")
        @project = Project.find(params[:id])
      end
    end

    def project_params
      params.require(:project).permit(:project_title, :description)
    end

end
