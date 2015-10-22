class TrueFalseQuestionsController < ApplicationController
  before_action :set_true_false_question, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @true_false_questions = TrueFalseQuestion.all
    respond_with(@true_false_questions)
  end

  def show
    respond_with(@true_false_question)
  end

  def new
    @true_false_question = TrueFalseQuestion.new
    respond_with(@true_false_question)
  end

  def edit
  end

  def create
    @true_false_question = TrueFalseQuestion.new(true_false_question_params)
    @true_false_question.save
    respond_with(@true_false_question)
  end

  def update
    @true_false_question.update(true_false_question_params)
    respond_with(@true_false_question)
  end

  def destroy
    @true_false_question.destroy
    respond_with(@true_false_question)
  end

  private
    def set_true_false_question
      @true_false_question = TrueFalseQuestion.find(params[:id])
    end

    def true_false_question_params
      params[:true_false_question]
    end
end
