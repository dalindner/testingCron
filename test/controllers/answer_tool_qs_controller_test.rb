require 'test_helper'

class AnswerToolQsControllerTest < ActionController::TestCase
  setup do
    @answer_tool_q = answer_tool_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_tool_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_tool_q" do
    assert_difference('AnswerToolQ.count') do
      post :create, answer_tool_q: { answer10: @answer_tool_q.answer10, answer11: @answer_tool_q.answer11, answer12: @answer_tool_q.answer12, answer13: @answer_tool_q.answer13, answer14: @answer_tool_q.answer14, answer15: @answer_tool_q.answer15, answer16: @answer_tool_q.answer16, answer17: @answer_tool_q.answer17, answer18: @answer_tool_q.answer18, answer19: @answer_tool_q.answer19, answer1: @answer_tool_q.answer1, answer20: @answer_tool_q.answer20, answer21: @answer_tool_q.answer21, answer22: @answer_tool_q.answer22, answer23: @answer_tool_q.answer23, answer24: @answer_tool_q.answer24, answer25: @answer_tool_q.answer25, answer2: @answer_tool_q.answer2, answer3: @answer_tool_q.answer3, answer4: @answer_tool_q.answer4, answer5: @answer_tool_q.answer5, answer6: @answer_tool_q.answer6, answer7: @answer_tool_q.answer7, answer8: @answer_tool_q.answer8, answer9: @answer_tool_q.answer9 }
    end

    assert_redirected_to answer_tool_q_path(assigns(:answer_tool_q))
  end

  test "should show answer_tool_q" do
    get :show, id: @answer_tool_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_tool_q
    assert_response :success
  end

  test "should update answer_tool_q" do
    patch :update, id: @answer_tool_q, answer_tool_q: { answer10: @answer_tool_q.answer10, answer11: @answer_tool_q.answer11, answer12: @answer_tool_q.answer12, answer13: @answer_tool_q.answer13, answer14: @answer_tool_q.answer14, answer15: @answer_tool_q.answer15, answer16: @answer_tool_q.answer16, answer17: @answer_tool_q.answer17, answer18: @answer_tool_q.answer18, answer19: @answer_tool_q.answer19, answer1: @answer_tool_q.answer1, answer20: @answer_tool_q.answer20, answer21: @answer_tool_q.answer21, answer22: @answer_tool_q.answer22, answer23: @answer_tool_q.answer23, answer24: @answer_tool_q.answer24, answer25: @answer_tool_q.answer25, answer2: @answer_tool_q.answer2, answer3: @answer_tool_q.answer3, answer4: @answer_tool_q.answer4, answer5: @answer_tool_q.answer5, answer6: @answer_tool_q.answer6, answer7: @answer_tool_q.answer7, answer8: @answer_tool_q.answer8, answer9: @answer_tool_q.answer9 }
    assert_redirected_to answer_tool_q_path(assigns(:answer_tool_q))
  end

  test "should destroy answer_tool_q" do
    assert_difference('AnswerToolQ.count', -1) do
      delete :destroy, id: @answer_tool_q
    end

    assert_redirected_to answer_tool_qs_path
  end
end
