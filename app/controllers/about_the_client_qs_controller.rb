class AboutTheClientQsController < ApplicationController
  before_action :set_about_the_client_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @about_the_client_qs = AboutTheClientQ.all
    respond_with(@about_the_client_qs)
  end

  def show
    respond_with(@about_the_client_q)
  end

  def new
    @about_the_client_q = AboutTheClientQ.new
    respond_with(@about_the_client_q)
  end

  def edit
  end

  def create
    @about_the_client_q = AboutTheClientQ.new(about_the_client_q_params)
    @about_the_client_q.save
    respond_with(@about_the_client_q)
  end

  def update
    @about_the_client_q.update(about_the_client_q_params)
    respond_with(@about_the_client_q)
  end

  def destroy
    @about_the_client_q.destroy
    respond_with(@about_the_client_q)
  end

  private
    def set_about_the_client_q
      @about_the_client_q = AboutTheClientQ.find(params[:id])
    end

    def about_the_client_q_params
      params.require(:about_the_client_q).permit(:question, :prompt1, :prompt2, :prompt3, :prompt4, :score1P1, :score2P1, :score3P1, :score4P1, :score1P2, :score2P2, :score3P2, :score4P2, :score1P3, :score2P3, :score3P3, :score4P3, :score1P4, :score2P4, :score3P4, :score4P4, :score1P5, :score2P5, :score3P5, :score4P5, :score1P5, :score2P5, :score3P5, :score4P5, :score1P6, :score2P6, :score3P6, :score4P6)
    end
end
