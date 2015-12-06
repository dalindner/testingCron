class AnswerScheduleQsController < ApplicationController
  before_action :set_answer_schedule_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_schedule_qs = AnswerScheduleQ.all
    respond_with(@answer_schedule_qs)
  end

  def show
    respond_with(@answer_schedule_q)
  end

  def new
    @answer_schedule_q = AnswerScheduleQ.new
    respond_with(@answer_schedule_q)
  end

  def edit
  end

  def create
    @answer_schedule_q = AnswerScheduleQ.new(answer_schedule_q_params)
    @answer_schedule_q.project_id = current_user.id
    @answer_schedule_q.save
    respond_with(@answer_schedule_q)
  end

  def update
    @answer_schedule_q.update(answer_schedule_q_params)
     redirect_to questions_project_path(@answer_schedule_q.id)
  end

  def destroy
    @answer_schedule_q.destroy
    respond_with(@answer_schedule_q)
  end

  private
    def set_answer_schedule_q
      @answer_schedule_q = AnswerScheduleQ.find(params[:id])
    end

    def answer_schedule_q_params
      params.require(:answer_schedule_q).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20, :answer21, :answer22, :answer23, :answer24, :answer25)
    end
end
