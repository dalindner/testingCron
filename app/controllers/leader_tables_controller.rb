class LeaderTablesController < ApplicationController
  before_action :set_leader_table, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @leader_tables = LeaderTable.all
    respond_with(@leader_tables)
  end

  def show
    respond_with(@leader_table)
  end

  def new
    @leader_table = LeaderTable.new
    respond_with(@leader_table)
  end

  def edit
  end

  def create
    @leader_table = LeaderTable.new(leader_table_params)
    @leader_table.save
    respond_with(@leader_table)
  end

  def update
    @leader_table.update(leader_table_params)
    respond_with(@leader_table)
  end

  def destroy
    @leader_table.destroy
    respond_with(@leader_table)
  end

  private
    def set_leader_table
      @leader_table = LeaderTable.find(params[:id])
    end

    def leader_table_params
      params.require(:leader_table).permit(:leaderId, :holderId)
    end
end
