require 'test_helper'

class RiskQsControllerTest < ActionController::TestCase
  setup do
    @risk_q = risk_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:risk_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create risk_q" do
    assert_difference('RiskQ.count') do
      post :create, risk_q: { prompt1: @risk_q.prompt1, prompt2: @risk_q.prompt2, prompt3: @risk_q.prompt3, prompt4: @risk_q.prompt4, question: @risk_q.question, score1P1: @risk_q.score1P1, score1P2: @risk_q.score1P2, score1P3: @risk_q.score1P3, score1P4: @risk_q.score1P4, score1P5: @risk_q.score1P5, score1P5: @risk_q.score1P5, score1P6: @risk_q.score1P6, score2P1: @risk_q.score2P1, score2P2: @risk_q.score2P2, score2P3: @risk_q.score2P3, score2P4: @risk_q.score2P4, score2P5: @risk_q.score2P5, score2P5: @risk_q.score2P5, score2P6: @risk_q.score2P6, score3P1: @risk_q.score3P1, score3P2: @risk_q.score3P2, score3P3: @risk_q.score3P3, score3P4: @risk_q.score3P4, score3P5: @risk_q.score3P5, score3P5: @risk_q.score3P5, score3P6: @risk_q.score3P6, score4P1: @risk_q.score4P1, score4P2: @risk_q.score4P2, score4P3: @risk_q.score4P3, score4P4: @risk_q.score4P4, score4P5: @risk_q.score4P5, score4P5: @risk_q.score4P5, score4P6: @risk_q.score4P6 }
    end

    assert_redirected_to risk_q_path(assigns(:risk_q))
  end

  test "should show risk_q" do
    get :show, id: @risk_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @risk_q
    assert_response :success
  end

  test "should update risk_q" do
    patch :update, id: @risk_q, risk_q: { prompt1: @risk_q.prompt1, prompt2: @risk_q.prompt2, prompt3: @risk_q.prompt3, prompt4: @risk_q.prompt4, question: @risk_q.question, score1P1: @risk_q.score1P1, score1P2: @risk_q.score1P2, score1P3: @risk_q.score1P3, score1P4: @risk_q.score1P4, score1P5: @risk_q.score1P5, score1P5: @risk_q.score1P5, score1P6: @risk_q.score1P6, score2P1: @risk_q.score2P1, score2P2: @risk_q.score2P2, score2P3: @risk_q.score2P3, score2P4: @risk_q.score2P4, score2P5: @risk_q.score2P5, score2P5: @risk_q.score2P5, score2P6: @risk_q.score2P6, score3P1: @risk_q.score3P1, score3P2: @risk_q.score3P2, score3P3: @risk_q.score3P3, score3P4: @risk_q.score3P4, score3P5: @risk_q.score3P5, score3P5: @risk_q.score3P5, score3P6: @risk_q.score3P6, score4P1: @risk_q.score4P1, score4P2: @risk_q.score4P2, score4P3: @risk_q.score4P3, score4P4: @risk_q.score4P4, score4P5: @risk_q.score4P5, score4P5: @risk_q.score4P5, score4P6: @risk_q.score4P6 }
    assert_redirected_to risk_q_path(assigns(:risk_q))
  end

  test "should destroy risk_q" do
    assert_difference('RiskQ.count', -1) do
      delete :destroy, id: @risk_q
    end

    assert_redirected_to risk_qs_path
  end
end
