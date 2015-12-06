class AnswerLocationQsController < ApplicationController
  before_action :set_answer_location_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_location_qs = AnswerLocationQ.all
    respond_with(@answer_location_qs)
  end

  def show
    respond_with(@answer_location_q)
  end

  def new
    @answer_location_q = AnswerLocationQ.new
    respond_with(@answer_location_q)
  end

  def edit
  end

  def create
    @answer_location_q = AnswerLocationQ.new(answer_location_q_params)
    @answer_location_q.project_id = current_user.id
    @answer_location_q.save
    respond_with(@answer_location_q)
  end

  def update
    @answer_location_q.update(answer_location_q_params)
    redirect_to questions_project_path(@answer_location_q.id)
  end

  def destroy
    @answer_location_q.destroy
    respond_with(@answer_location_q)
  end

  private
    def set_answer_location_q
      @answer_location_q = AnswerLocationQ.find(params[:id])
    end

    def answer_location_q_params
      params.require(:answer_location_q).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20, :answer21, :answer22, :answer23, :answer24, :answer25)
    end
end
