require 'test_helper'

class LocationQsControllerTest < ActionController::TestCase
  setup do
    @location_q = location_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_q" do
    assert_difference('LocationQ.count') do
      post :create, location_q: { prompt1: @location_q.prompt1, prompt2: @location_q.prompt2, prompt3: @location_q.prompt3, prompt4: @location_q.prompt4, question: @location_q.question, score1P1: @location_q.score1P1, score1P2: @location_q.score1P2, score1P3: @location_q.score1P3, score1P4: @location_q.score1P4, score1P5: @location_q.score1P5, score1P5: @location_q.score1P5, score1P6: @location_q.score1P6, score2P1: @location_q.score2P1, score2P2: @location_q.score2P2, score2P3: @location_q.score2P3, score2P4: @location_q.score2P4, score2P5: @location_q.score2P5, score2P5: @location_q.score2P5, score2P6: @location_q.score2P6, score3P1: @location_q.score3P1, score3P2: @location_q.score3P2, score3P3: @location_q.score3P3, score3P4: @location_q.score3P4, score3P5: @location_q.score3P5, score3P5: @location_q.score3P5, score3P6: @location_q.score3P6, score4P1: @location_q.score4P1, score4P2: @location_q.score4P2, score4P3: @location_q.score4P3, score4P4: @location_q.score4P4, score4P5: @location_q.score4P5, score4P5: @location_q.score4P5, score4P6: @location_q.score4P6 }
    end

    assert_redirected_to location_q_path(assigns(:location_q))
  end

  test "should show location_q" do
    get :show, id: @location_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_q
    assert_response :success
  end

  test "should update location_q" do
    patch :update, id: @location_q, location_q: { prompt1: @location_q.prompt1, prompt2: @location_q.prompt2, prompt3: @location_q.prompt3, prompt4: @location_q.prompt4, question: @location_q.question, score1P1: @location_q.score1P1, score1P2: @location_q.score1P2, score1P3: @location_q.score1P3, score1P4: @location_q.score1P4, score1P5: @location_q.score1P5, score1P5: @location_q.score1P5, score1P6: @location_q.score1P6, score2P1: @location_q.score2P1, score2P2: @location_q.score2P2, score2P3: @location_q.score2P3, score2P4: @location_q.score2P4, score2P5: @location_q.score2P5, score2P5: @location_q.score2P5, score2P6: @location_q.score2P6, score3P1: @location_q.score3P1, score3P2: @location_q.score3P2, score3P3: @location_q.score3P3, score3P4: @location_q.score3P4, score3P5: @location_q.score3P5, score3P5: @location_q.score3P5, score3P6: @location_q.score3P6, score4P1: @location_q.score4P1, score4P2: @location_q.score4P2, score4P3: @location_q.score4P3, score4P4: @location_q.score4P4, score4P5: @location_q.score4P5, score4P5: @location_q.score4P5, score4P6: @location_q.score4P6 }
    assert_redirected_to location_q_path(assigns(:location_q))
  end

  test "should destroy location_q" do
    assert_difference('LocationQ.count', -1) do
      delete :destroy, id: @location_q
    end

    assert_redirected_to location_qs_path
  end
end
