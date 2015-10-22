require 'test_helper'

class AnswerRequirementQsControllerTest < ActionController::TestCase
  setup do
    @answer_requirement_q = answer_requirement_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_requirement_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_requirement_q" do
    assert_difference('AnswerRequirementQ.count') do
      post :create, answer_requirement_q: { answer1: @answer_requirement_q.answer1, answer2: @answer_requirement_q.answer2, answer3: @answer_requirement_q.answer3 }
    end

    assert_redirected_to answer_requirement_q_path(assigns(:answer_requirement_q))
  end

  test "should show answer_requirement_q" do
    get :show, id: @answer_requirement_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_requirement_q
    assert_response :success
  end

  test "should update answer_requirement_q" do
    patch :update, id: @answer_requirement_q, answer_requirement_q: { answer1: @answer_requirement_q.answer1, answer2: @answer_requirement_q.answer2, answer3: @answer_requirement_q.answer3 }
    assert_redirected_to answer_requirement_q_path(assigns(:answer_requirement_q))
  end

  test "should destroy answer_requirement_q" do
    assert_difference('AnswerRequirementQ.count', -1) do
      delete :destroy, id: @answer_requirement_q
    end

    assert_redirected_to answer_requirement_qs_path
  end
end
