class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :admin_required, only: [:new, :create, :addto, :kickout]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def show
      @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created User." 
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def access
    @team  = params[:id6].to_s
    @user = User.find(params[:id])
    if @user.allow == true
         @user.allow = !@user.allow 
         flash[:warning] = "You revoked his ability to determine the process model！"
    else 
         @user.allow = !@user.allow 
         flash[:warning] = "You allowed him to determine the process model！"
    end        
    @user.save
    redirect_to team_path(@team)
  end

  def update
    @user = User.find(params[:id])
    @user.update(edit_params)
    if @user.save
      if @user.role == "Admin"
        @user.specialty = "Admin"
      elsif @user.role == "Leader"
        @user.specialty = "Team Leader"
      end
      @user.save
      flash[:notice] = "Successfully updated User."
      redirect_to root_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to root_path
    end
  end


  private

    def team_params
      params.require(:team).permit(:title, :team_description)
    end

    def admin_required
      if !current_user.role == "Admin"
        flash[:warning] = "You are not admin,cannot change user！"
        redirect_to root_path
      end
    end

    def edit_params
      params.require(:user).permit(:name, :company, :age, :gender, :role, :specialty, :phoneNumber, :phoneNumberSecondary, :email, :emailSecondary, :access)
    end
end
