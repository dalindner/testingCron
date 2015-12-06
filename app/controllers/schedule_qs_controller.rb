class ScheduleQsController < ApplicationController
  before_action :set_schedule_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @schedule_qs = ScheduleQ.all
    respond_with(@schedule_qs)
  end

  def show
    respond_with(@schedule_q)
  end

  def new
    @schedule_q = ScheduleQ.new
    respond_with(@schedule_q)
  end

  def edit
  end

  def create
    @schedule_q = ScheduleQ.new(schedule_q_params)
    @schedule_q.save
    respond_with(@schedule_q)
  end

  def update
    @schedule_q.update(schedule_q_params)
    respond_with(@schedule_q)
  end

  def destroy
    @schedule_q.destroy
    respond_with(@schedule_q)
  end

  private
    def set_schedule_q
      @schedule_q = ScheduleQ.find(params[:id])
    end

    def schedule_q_params
      params.require(:schedule_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
