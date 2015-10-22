require 'test_helper'

class MultChoiceQuestionsControllerTest < ActionController::TestCase
  setup do
    @mult_choice_question = mult_choice_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mult_choice_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mult_choice_question" do
    assert_difference('MultChoiceQuestion.count') do
      post :create, mult_choice_question: {  }
    end

    assert_redirected_to mult_choice_question_path(assigns(:mult_choice_question))
  end

  test "should show mult_choice_question" do
    get :show, id: @mult_choice_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mult_choice_question
    assert_response :success
  end

  test "should update mult_choice_question" do
    patch :update, id: @mult_choice_question, mult_choice_question: {  }
    assert_redirected_to mult_choice_question_path(assigns(:mult_choice_question))
  end

  test "should destroy mult_choice_question" do
    assert_difference('MultChoiceQuestion.count', -1) do
      delete :destroy, id: @mult_choice_question
    end

    assert_redirected_to mult_choice_questions_path
  end
end
