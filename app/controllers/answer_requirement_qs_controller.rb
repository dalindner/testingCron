class AnswerRequirementQsController < ApplicationController
  before_action :set_answer_requirement_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_requirement_qs = AnswerRequirementQ.all
    respond_with(@answer_requirement_qs)
  end

  def show
    respond_with(@answer_requirement_q)
  end

  def new
    @answer_requirement_q = AnswerRequirementQ.new
    respond_with(@answer_requirement_q)
  end

  def edit
  end

  def create
    @answer_requirement_q = AnswerRequirementQ.new(answer_requirement_q_params)
    @answer_requirement_q.save
    respond_with(@answer_requirement_q)
  end

  def update
    @answer_requirement_q.update(answer_requirement_q_params)
    respond_with(@answer_requirement_q)
  end

  def destroy
    @answer_requirement_q.destroy
    respond_with(@answer_requirement_q)
  end

  private
    def set_answer_requirement_q
      @answer_requirement_q = AnswerRequirementQ.find(params[:id])
    end

    def answer_requirement_q_params
      params.require(:answer_requirement_q).permit(:answer1, :answer2, :answer3)
    end
end
