class LocationQsController < ApplicationController
  before_action :set_location_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @location_qs = LocationQ.all
    respond_with(@location_qs)
  end

  def show
    respond_with(@location_q)
  end

  def new
    @location_q = LocationQ.new
    respond_with(@location_q)
  end

  def edit
  end

  def create
    @location_q = LocationQ.new(location_q_params)
    @location_q.save
    respond_with(@location_q)
  end

  def update
    @location_q.update(location_q_params)
    respond_with(@location_q)
  end

  def destroy
    @location_q.destroy
    respond_with(@location_q)
  end

  private
    def set_location_q
      @location_q = LocationQ.find(params[:id])
    end

    def location_q_params
      params.require(:location_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
