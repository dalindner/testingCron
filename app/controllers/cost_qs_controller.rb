class CostQsController < ApplicationController
  before_action :set_cost_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cost_qs = CostQ.all
    respond_with(@cost_qs)
  end

  def show
    respond_with(@cost_q)
  end

  def new
    @cost_q = CostQ.new
    respond_with(@cost_q)
  end

  def edit
  end

  def create
    @cost_q = CostQ.new(cost_q_params)
    @cost_q.save
    respond_with(@cost_q)
  end

  def update
    @cost_q.update(cost_q_params)
    respond_with(@cost_q)
  end

  def destroy
    @cost_q.destroy
    respond_with(@cost_q)
  end

  private
    def set_cost_q
      @cost_q = CostQ.find(params[:id])
    end

    def cost_q_params
      params.require(:cost_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
