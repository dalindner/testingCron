class AnswerToolQsController < ApplicationController
  before_action :set_answer_tool_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_tool_qs = AnswerToolQ.all
    respond_with(@answer_tool_qs)
  end

  def show
    respond_with(@answer_tool_q)
  end

  def new
    @answer_tool_q = AnswerToolQ.new
    respond_with(@answer_tool_q)
  end

  def edit
  end

  def create
    @answer_tool_q = AnswerToolQ.new(answer_tool_q_params)
    @answer_tool_q.project_id = current_user.id
    @answer_tool_q.save
    respond_with(@answer_tool_q)
  end

  def update
    @answer_tool_q.update(answer_tool_q_params)
     redirect_to questions_project_path(@answer_tool_q.id)
  end

  def destroy
    @answer_tool_q.destroy
    respond_with(@answer_tool_q)
  end

  private
    def set_answer_tool_q
      @answer_tool_q = AnswerToolQ.find(params[:id])
    end

    def answer_tool_q_params
      params.require(:answer_tool_q).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20, :answer21, :answer22, :answer23, :answer24, :answer25)
    end
end
