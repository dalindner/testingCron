require 'test_helper'

class RequirementQsControllerTest < ActionController::TestCase
  setup do
    @requirement_q = requirement_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirement_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement_q" do
    assert_difference('RequirementQ.count') do
      post :create, requirement_q: { question1: @requirement_q.question1, score1P1: @requirement_q.score1P1, score1P2: @requirement_q.score1P2, score1P3: @requirement_q.score1P3, score1P4: @requirement_q.score1P4, score1P5: @requirement_q.score1P5, score1P5: @requirement_q.score1P5, score2P1: @requirement_q.score2P1, score2P2: @requirement_q.score2P2, score2P3: @requirement_q.score2P3, score2P4: @requirement_q.score2P4, score2P5: @requirement_q.score2P5, score2P5: @requirement_q.score2P5, score3P1: @requirement_q.score3P1, score3P2: @requirement_q.score3P2, score3P3: @requirement_q.score3P3, score3P4: @requirement_q.score3P4, score3P5: @requirement_q.score3P5, score3P5: @requirement_q.score3P5, score4P1: @requirement_q.score4P1, score4P2: @requirement_q.score4P2, score4P3: @requirement_q.score4P3, score4P4: @requirement_q.score4P4, score4P5: @requirement_q.score4P5, score4P5: @requirement_q.score4P5 }
    end

    assert_redirected_to requirement_q_path(assigns(:requirement_q))
  end

  test "should show requirement_q" do
    get :show, id: @requirement_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requirement_q
    assert_response :success
  end

  test "should update requirement_q" do
    patch :update, id: @requirement_q, requirement_q: { question1: @requirement_q.question1, score1P1: @requirement_q.score1P1, score1P2: @requirement_q.score1P2, score1P3: @requirement_q.score1P3, score1P4: @requirement_q.score1P4, score1P5: @requirement_q.score1P5, score1P5: @requirement_q.score1P5, score2P1: @requirement_q.score2P1, score2P2: @requirement_q.score2P2, score2P3: @requirement_q.score2P3, score2P4: @requirement_q.score2P4, score2P5: @requirement_q.score2P5, score2P5: @requirement_q.score2P5, score3P1: @requirement_q.score3P1, score3P2: @requirement_q.score3P2, score3P3: @requirement_q.score3P3, score3P4: @requirement_q.score3P4, score3P5: @requirement_q.score3P5, score3P5: @requirement_q.score3P5, score4P1: @requirement_q.score4P1, score4P2: @requirement_q.score4P2, score4P3: @requirement_q.score4P3, score4P4: @requirement_q.score4P4, score4P5: @requirement_q.score4P5, score4P5: @requirement_q.score4P5 }
    assert_redirected_to requirement_q_path(assigns(:requirement_q))
  end

  test "should destroy requirement_q" do
    assert_difference('RequirementQ.count', -1) do
      delete :destroy, id: @requirement_q
    end

    assert_redirected_to requirement_qs_path
  end
end
