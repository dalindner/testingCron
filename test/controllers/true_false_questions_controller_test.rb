require 'test_helper'

class TrueFalseQuestionsControllerTest < ActionController::TestCase
  setup do
    @true_false_question = true_false_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:true_false_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create true_false_question" do
    assert_difference('TrueFalseQuestion.count') do
      post :create, true_false_question: {  }
    end

    assert_redirected_to true_false_question_path(assigns(:true_false_question))
  end

  test "should show true_false_question" do
    get :show, id: @true_false_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @true_false_question
    assert_response :success
  end

  test "should update true_false_question" do
    patch :update, id: @true_false_question, true_false_question: {  }
    assert_redirected_to true_false_question_path(assigns(:true_false_question))
  end

  test "should destroy true_false_question" do
    assert_difference('TrueFalseQuestion.count', -1) do
      delete :destroy, id: @true_false_question
    end

    assert_redirected_to true_false_questions_path
  end
end
