require 'test_helper'

class AnswerAboutTheTeamQsControllerTest < ActionController::TestCase
  setup do
    @answer_about_the_team_q = answer_about_the_team_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_about_the_team_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_about_the_team_q" do
    assert_difference('AnswerAboutTheTeamQ.count') do
      post :create, answer_about_the_team_q: { answer10: @answer_about_the_team_q.answer10, answer11: @answer_about_the_team_q.answer11, answer12: @answer_about_the_team_q.answer12, answer13: @answer_about_the_team_q.answer13, answer14: @answer_about_the_team_q.answer14, answer15: @answer_about_the_team_q.answer15, answer16: @answer_about_the_team_q.answer16, answer17: @answer_about_the_team_q.answer17, answer18: @answer_about_the_team_q.answer18, answer19: @answer_about_the_team_q.answer19, answer1: @answer_about_the_team_q.answer1, answer20: @answer_about_the_team_q.answer20, answer21: @answer_about_the_team_q.answer21, answer22: @answer_about_the_team_q.answer22, answer23: @answer_about_the_team_q.answer23, answer24: @answer_about_the_team_q.answer24, answer25: @answer_about_the_team_q.answer25, answer2: @answer_about_the_team_q.answer2, answer3: @answer_about_the_team_q.answer3, answer4: @answer_about_the_team_q.answer4, answer5: @answer_about_the_team_q.answer5, answer6: @answer_about_the_team_q.answer6, answer7: @answer_about_the_team_q.answer7, answer8: @answer_about_the_team_q.answer8, answer9: @answer_about_the_team_q.answer9 }
    end

    assert_redirected_to answer_about_the_team_q_path(assigns(:answer_about_the_team_q))
  end

  test "should show answer_about_the_team_q" do
    get :show, id: @answer_about_the_team_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_about_the_team_q
    assert_response :success
  end

  test "should update answer_about_the_team_q" do
    patch :update, id: @answer_about_the_team_q, answer_about_the_team_q: { answer10: @answer_about_the_team_q.answer10, answer11: @answer_about_the_team_q.answer11, answer12: @answer_about_the_team_q.answer12, answer13: @answer_about_the_team_q.answer13, answer14: @answer_about_the_team_q.answer14, answer15: @answer_about_the_team_q.answer15, answer16: @answer_about_the_team_q.answer16, answer17: @answer_about_the_team_q.answer17, answer18: @answer_about_the_team_q.answer18, answer19: @answer_about_the_team_q.answer19, answer1: @answer_about_the_team_q.answer1, answer20: @answer_about_the_team_q.answer20, answer21: @answer_about_the_team_q.answer21, answer22: @answer_about_the_team_q.answer22, answer23: @answer_about_the_team_q.answer23, answer24: @answer_about_the_team_q.answer24, answer25: @answer_about_the_team_q.answer25, answer2: @answer_about_the_team_q.answer2, answer3: @answer_about_the_team_q.answer3, answer4: @answer_about_the_team_q.answer4, answer5: @answer_about_the_team_q.answer5, answer6: @answer_about_the_team_q.answer6, answer7: @answer_about_the_team_q.answer7, answer8: @answer_about_the_team_q.answer8, answer9: @answer_about_the_team_q.answer9 }
    assert_redirected_to answer_about_the_team_q_path(assigns(:answer_about_the_team_q))
  end

  test "should destroy answer_about_the_team_q" do
    assert_difference('AnswerAboutTheTeamQ.count', -1) do
      delete :destroy, id: @answer_about_the_team_q
    end

    assert_redirected_to answer_about_the_team_qs_path
  end
end
