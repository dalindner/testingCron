class ToolQsController < ApplicationController
  before_action :set_tool_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tool_qs = ToolQ.all
    respond_with(@tool_qs)
  end

  def show
    respond_with(@tool_q)
  end

  def new
    @tool_q = ToolQ.new
    respond_with(@tool_q)
  end

  def edit
  end

  def create
    @tool_q = ToolQ.new(tool_q_params)
    @tool_q.save
    respond_with(@tool_q)
  end

  def update
    @tool_q.update(tool_q_params)
    respond_with(@tool_q)
  end

  def destroy
    @tool_q.destroy
    respond_with(@tool_q)
  end

  private
    def set_tool_q
      @tool_q = ToolQ.find(params[:id])
    end

    def tool_q_params
      params.require(:tool_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
