require 'test_helper'

class AnswerLocationQsControllerTest < ActionController::TestCase
  setup do
    @answer_location_q = answer_location_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_location_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_location_q" do
    assert_difference('AnswerLocationQ.count') do
      post :create, answer_location_q: { answer10: @answer_location_q.answer10, answer11: @answer_location_q.answer11, answer12: @answer_location_q.answer12, answer13: @answer_location_q.answer13, answer14: @answer_location_q.answer14, answer15: @answer_location_q.answer15, answer16: @answer_location_q.answer16, answer17: @answer_location_q.answer17, answer18: @answer_location_q.answer18, answer19: @answer_location_q.answer19, answer1: @answer_location_q.answer1, answer20: @answer_location_q.answer20, answer21: @answer_location_q.answer21, answer22: @answer_location_q.answer22, answer23: @answer_location_q.answer23, answer24: @answer_location_q.answer24, answer25: @answer_location_q.answer25, answer2: @answer_location_q.answer2, answer3: @answer_location_q.answer3, answer4: @answer_location_q.answer4, answer5: @answer_location_q.answer5, answer6: @answer_location_q.answer6, answer7: @answer_location_q.answer7, answer8: @answer_location_q.answer8, answer9: @answer_location_q.answer9 }
    end

    assert_redirected_to answer_location_q_path(assigns(:answer_location_q))
  end

  test "should show answer_location_q" do
    get :show, id: @answer_location_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_location_q
    assert_response :success
  end

  test "should update answer_location_q" do
    patch :update, id: @answer_location_q, answer_location_q: { answer10: @answer_location_q.answer10, answer11: @answer_location_q.answer11, answer12: @answer_location_q.answer12, answer13: @answer_location_q.answer13, answer14: @answer_location_q.answer14, answer15: @answer_location_q.answer15, answer16: @answer_location_q.answer16, answer17: @answer_location_q.answer17, answer18: @answer_location_q.answer18, answer19: @answer_location_q.answer19, answer1: @answer_location_q.answer1, answer20: @answer_location_q.answer20, answer21: @answer_location_q.answer21, answer22: @answer_location_q.answer22, answer23: @answer_location_q.answer23, answer24: @answer_location_q.answer24, answer25: @answer_location_q.answer25, answer2: @answer_location_q.answer2, answer3: @answer_location_q.answer3, answer4: @answer_location_q.answer4, answer5: @answer_location_q.answer5, answer6: @answer_location_q.answer6, answer7: @answer_location_q.answer7, answer8: @answer_location_q.answer8, answer9: @answer_location_q.answer9 }
    assert_redirected_to answer_location_q_path(assigns(:answer_location_q))
  end

  test "should destroy answer_location_q" do
    assert_difference('AnswerLocationQ.count', -1) do
      delete :destroy, id: @answer_location_q
    end

    assert_redirected_to answer_location_qs_path
  end
end
