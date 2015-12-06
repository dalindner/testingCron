class RequirementQsController < ApplicationController
  before_action :set_requirement_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @requirement_qs = RequirementQ.all
    respond_with(@requirement_qs)
  end

  def show
    respond_with(@requirement_q)
  end

  def new
    @requirement_q = RequirementQ.new
    respond_with(@requirement_q)
  end

  def edit
  end

  def create
    @requirement_q = RequirementQ.new(requirement_q_params)
    @requirement_q.save
    respond_with(@requirement_q)
  end

  def update
    @requirement_q.update(requirement_q_params)
    respond_with(@requirement_q)
  end

  def destroy
    @requirement_q.destroy
    respond_with(@requirement_q)
  end

  private
    def set_requirement_q
      @requirement_q = RequirementQ.find(params[:id])
    end

    def requirement_q_params
      params.require(:requirement_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
