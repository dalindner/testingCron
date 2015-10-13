require 'test_helper'

class LeaderTablesControllerTest < ActionController::TestCase
  setup do
    @leader_table = leader_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leader_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leader_table" do
    assert_difference('LeaderTable.count') do
      post :create, leader_table: { holderId: @leader_table.holderId, leaderId: @leader_table.leaderId }
    end

    assert_redirected_to leader_table_path(assigns(:leader_table))
  end

  test "should show leader_table" do
    get :show, id: @leader_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leader_table
    assert_response :success
  end

  test "should update leader_table" do
    patch :update, id: @leader_table, leader_table: { holderId: @leader_table.holderId, leaderId: @leader_table.leaderId }
    assert_redirected_to leader_table_path(assigns(:leader_table))
  end

  test "should destroy leader_table" do
    assert_difference('LeaderTable.count', -1) do
      delete :destroy, id: @leader_table
    end

    assert_redirected_to leader_tables_path
  end
end
