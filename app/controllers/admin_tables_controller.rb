class AdminTablesController < ApplicationController
  before_action :set_admin_table, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_tables = AdminTable.all
    respond_with(@admin_tables)
  end

  def show
    respond_with(@admin_table)
  end

  def new
    @admin_table = AdminTable.new
    respond_with(@admin_table)
  end

  def edit
  end

  def create
    @admin_table = AdminTable.new(admin_table_params)
    @admin_table.save
    respond_with(@admin_table)
  end

  def update
    @admin_table.update(admin_table_params)
    respond_with(@admin_table)
  end

  def destroy
    @admin_table.destroy
    respond_with(@admin_table)
  end

  private
    def set_admin_table
      @admin_table = AdminTable.find(params[:id])
    end

    def admin_table_params
      params[:admin_table]
    end
end
