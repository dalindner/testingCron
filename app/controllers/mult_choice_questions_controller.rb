class MultChoiceQuestionsController < ApplicationController
  before_action :set_mult_choice_question, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mult_choice_questions = MultChoiceQuestion.all
    respond_with(@mult_choice_questions)
  end

  def show
    respond_with(@mult_choice_question)
  end

  def new
    @mult_choice_question = MultChoiceQuestion.new
    respond_with(@mult_choice_question)
  end

  def edit
  end

  def create
    @mult_choice_question = MultChoiceQuestion.new(mult_choice_question_params)
    @mult_choice_question.save
    respond_with(@mult_choice_question)
  end

  def update
    @mult_choice_question.update(mult_choice_question_params)
    respond_with(@mult_choice_question)
  end

  def destroy
    @mult_choice_question.destroy
    respond_with(@mult_choice_question)
  end

  private
    def set_mult_choice_question
      @mult_choice_question = MultChoiceQuestion.find(params[:id])
    end

    def mult_choice_question_params
      params[:mult_choice_question]
    end
end
