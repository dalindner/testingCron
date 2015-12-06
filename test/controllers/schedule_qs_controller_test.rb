require 'test_helper'

class ScheduleQsControllerTest < ActionController::TestCase
  setup do
    @schedule_q = schedule_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_q" do
    assert_difference('ScheduleQ.count') do
      post :create, schedule_q: { prompt1: @schedule_q.prompt1, prompt2: @schedule_q.prompt2, prompt3: @schedule_q.prompt3, prompt4: @schedule_q.prompt4, question: @schedule_q.question, score1P1: @schedule_q.score1P1, score1P2: @schedule_q.score1P2, score1P3: @schedule_q.score1P3, score1P4: @schedule_q.score1P4, score1P5: @schedule_q.score1P5, score1P5: @schedule_q.score1P5, score1P6: @schedule_q.score1P6, score2P1: @schedule_q.score2P1, score2P2: @schedule_q.score2P2, score2P3: @schedule_q.score2P3, score2P4: @schedule_q.score2P4, score2P5: @schedule_q.score2P5, score2P5: @schedule_q.score2P5, score2P6: @schedule_q.score2P6, score3P1: @schedule_q.score3P1, score3P2: @schedule_q.score3P2, score3P3: @schedule_q.score3P3, score3P4: @schedule_q.score3P4, score3P5: @schedule_q.score3P5, score3P5: @schedule_q.score3P5, score3P6: @schedule_q.score3P6, score4P1: @schedule_q.score4P1, score4P2: @schedule_q.score4P2, score4P3: @schedule_q.score4P3, score4P4: @schedule_q.score4P4, score4P5: @schedule_q.score4P5, score4P5: @schedule_q.score4P5, score4P6: @schedule_q.score4P6 }
    end

    assert_redirected_to schedule_q_path(assigns(:schedule_q))
  end

  test "should show schedule_q" do
    get :show, id: @schedule_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_q
    assert_response :success
  end

  test "should update schedule_q" do
    patch :update, id: @schedule_q, schedule_q: { prompt1: @schedule_q.prompt1, prompt2: @schedule_q.prompt2, prompt3: @schedule_q.prompt3, prompt4: @schedule_q.prompt4, question: @schedule_q.question, score1P1: @schedule_q.score1P1, score1P2: @schedule_q.score1P2, score1P3: @schedule_q.score1P3, score1P4: @schedule_q.score1P4, score1P5: @schedule_q.score1P5, score1P5: @schedule_q.score1P5, score1P6: @schedule_q.score1P6, score2P1: @schedule_q.score2P1, score2P2: @schedule_q.score2P2, score2P3: @schedule_q.score2P3, score2P4: @schedule_q.score2P4, score2P5: @schedule_q.score2P5, score2P5: @schedule_q.score2P5, score2P6: @schedule_q.score2P6, score3P1: @schedule_q.score3P1, score3P2: @schedule_q.score3P2, score3P3: @schedule_q.score3P3, score3P4: @schedule_q.score3P4, score3P5: @schedule_q.score3P5, score3P5: @schedule_q.score3P5, score3P6: @schedule_q.score3P6, score4P1: @schedule_q.score4P1, score4P2: @schedule_q.score4P2, score4P3: @schedule_q.score4P3, score4P4: @schedule_q.score4P4, score4P5: @schedule_q.score4P5, score4P5: @schedule_q.score4P5, score4P6: @schedule_q.score4P6 }
    assert_redirected_to schedule_q_path(assigns(:schedule_q))
  end

  test "should destroy schedule_q" do
    assert_difference('ScheduleQ.count', -1) do
      delete :destroy, id: @schedule_q
    end

    assert_redirected_to schedule_qs_path
  end
end
