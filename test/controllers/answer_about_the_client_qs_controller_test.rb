require 'test_helper'

class AnswerAboutTheClientQsControllerTest < ActionController::TestCase
  setup do
    @answer_about_the_client_q = answer_about_the_client_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_about_the_client_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_about_the_client_q" do
    assert_difference('AnswerAboutTheClientQ.count') do
      post :create, answer_about_the_client_q: {  }
    end

    assert_redirected_to answer_about_the_client_q_path(assigns(:answer_about_the_client_q))
  end

  test "should show answer_about_the_client_q" do
    get :show, id: @answer_about_the_client_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_about_the_client_q
    assert_response :success
  end

  test "should update answer_about_the_client_q" do
    patch :update, id: @answer_about_the_client_q, answer_about_the_client_q: {  }
    assert_redirected_to answer_about_the_client_q_path(assigns(:answer_about_the_client_q))
  end

  test "should destroy answer_about_the_client_q" do
    assert_difference('AnswerAboutTheClientQ.count', -1) do
      delete :destroy, id: @answer_about_the_client_q
    end

    assert_redirected_to answer_about_the_client_qs_path
  end
end
