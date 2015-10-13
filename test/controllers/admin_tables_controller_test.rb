require 'test_helper'

class AdminTablesControllerTest < ActionController::TestCase
  setup do
    @admin_table = admin_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_table" do
    assert_difference('AdminTable.count') do
      post :create, admin_table: { adminId: @admin_table.adminId, holderId: @admin_table.holderId }
    end

    assert_redirected_to admin_table_path(assigns(:admin_table))
  end

  test "should show admin_table" do
    get :show, id: @admin_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_table
    assert_response :success
  end

  test "should update admin_table" do
    patch :update, id: @admin_table, admin_table: { adminId: @admin_table.adminId, holderId: @admin_table.holderId }
    assert_redirected_to admin_table_path(assigns(:admin_table))
  end

  test "should destroy admin_table" do
    assert_difference('AdminTable.count', -1) do
      delete :destroy, id: @admin_table
    end

    assert_redirected_to admin_tables_path
  end
end
