class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_team, :except =>[:questions, :determineModel, :update, :index, :finish]
  before_action :admin_required, only: [:new, :create ]
  before_action :check_finish, :except =>[:index, :new, :create, :show, :finish]

  def index
    @projects = current_user.projects.order("updated_at DESC")
  end

  def show
    @project = @team.projects.find(params[:id])
  end

  def new
    @project = @team.projects.new

  end

  def edit
     @project = @team.projects.find(params[:id])
  end


  def questions
    @project = Project.find(params[:id])
  end

  def determineModel
    @project = Project.find(params[:id]) 

    @runningTotalT1 = 0
    @runningTotalT2 = 0
    @runningTotalT3 = 0
    @runningTotalT4 = 0
    @runningTotalT5 = 0
    @runningTotalT6 = 0

    @test = @project
    @c = AnswerRequirementQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerRequirementQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = RequirementQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end

    @c = AnswerCostQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerCostQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = CostQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end

    @c = AnswerAboutTheClientQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheClientQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheClientQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end


    @c = AnswerAboutTheClientQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheClientQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheClientQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end


    @c = AnswerAboutTheUserQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheUserQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheUserQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end


    @c = AnswerAboutTheTeamQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheTeamQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheTeamQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end
  @c = AnswerAboutTheProductQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheProductQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheProductQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end
    @c = AnswerAboutTheProjectQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerAboutTheProjectQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = AboutTheProjectQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end
  @c = AnswerRiskQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerRiskQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = RiskQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end

    @c = AnswerScheduleQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerScheduleQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = ScheduleQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end

    @c = AnswerToolQ.columns.map {|c| c.name }
    for j in 2..@c.size-4
      @answer = AnswerToolQ.where(:id => @test.id).pluck(@c[j]).first
      @index = j-2
      if(@answer != nil)
        for k in 1..6
          if(@answer != nil)
            "score#{@answer}P#{k}"
            @score = ToolQ.where(:id => j-1).pluck("score#{@answer}P#{k}").first
            if(@score != nil)
              if(k == 1)
                @runningTotalT1 += @score
              end
              if(k == 2)
                @runningTotalT2 += @score
              end
              if(k == 3)
                @runningTotalT3 += @score
              end
              if(k == 4)
                @runningTotalT4 += @score
              end
              if(k == 5)
                @runningTotalT5 += @score
              end
              if(k == 6)
                @runningTotalT5 += @score
              end
            end
          end
        end
      end
    end

    @runningTotalT1
    @runningTotalT2
    @runningTotalT3
    @runningTotalT4
    @runningTotalT5
    @runningTotalT6

    @test.scoreModel1 = @runningTotalT1
    @test.scoreModel2 = @runningTotalT2
    @test.scoreModel3 = @runningTotalT3
    @test.scoreModel4 = @runningTotalT4
    @test.scoreModel5 = @runningTotalT5
    @test.scoreModel6 = @runningTotalT6

    @test.save

    @max = [@runningTotalT1, @runningTotalT2, @runningTotalT3, @runningTotalT4, @runningTotalT5, @runningTotalT6].max
    if(@max == @runningTotalT1)
    elsif(@max == @runningTotalT2)
    elsif(@max == @runningTotalT3)
    elsif(@max == @runningTotalT4)
    elsif(@max == @runningTotalT5)
    elsif(@max == @runningTotalT6)
    end
  end



  def create
    #@team = Team.find(params[:team_id])
    @project = @team.projects.build(project_params)
    @project.finish = false
    @project.process_model = "Agile"
    @project.save

   # @project.author = current_user

   if @project.save
     AnswerCostQ.create()
     AnswerRequirementQ.create()
     AnswerAboutTheClientQ.create()
     AnswerAboutTheUserQ.create()
     AnswerAboutTheTeamQ.create()
     AnswerAboutTheProductQ.create()
     AnswerAboutTheProjectQ.create()
     AnswerRiskQ.create()
     AnswerLocationQ.create()
     AnswerScheduleQ.create()
     AnswerToolQ.create()
     Scheduling.create()
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

    if(:scoreModel1 != 0)
      @project = Project.find(params[:id])
      @project.update(project_params)
      redirect_to root_path
    else
        @team = Team.find(params[:team_id])
      @project = @team.projects.find(params[:id])
     # @project = current_user.projects.find(params[:id])

     if @project.update(project_params)
       redirect_to team_path(@team), notice: "Updated successfully！"
     else
       render :edit
     end
    end
  end

  def accept_terms
    @project.update(project_params)
    respond_with(@project)
  end

  def finish
    @project = Project.find(params[:id])
    @project.finish = true
    flash[:warning] = "You finished the project！"
    @project.save
  end

  private

    def admin_required
      if !current_user.role == "Admin"
        flash[:warning] = "You are not admin,cannot create project！"
        redirect_to root_path
      end
    end

    def find_team
        @team = Team.find(params[:team_id])
    end

    def check_finish
        @project = Project.find(params[:id])
        if @project.finish
        flash[:warning] = "The project is finished！"
        redirect_to team_path(@project.team)
      end
    end

    def project_params
      params.require(:project).permit(:project_title, :description, :process_model, :scoreModel1, :scoreModel2, :scoreModel3, :scoreModel4, :scoreModel5, :scoreModel6)
    end
    
end
