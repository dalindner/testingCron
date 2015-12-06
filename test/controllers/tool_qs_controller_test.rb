require 'test_helper'

class ToolQsControllerTest < ActionController::TestCase
  setup do
    @tool_q = tool_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tool_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool_q" do
    assert_difference('ToolQ.count') do
      post :create, tool_q: { prompt1: @tool_q.prompt1, prompt2: @tool_q.prompt2, prompt3: @tool_q.prompt3, prompt4: @tool_q.prompt4, question: @tool_q.question, score1P1: @tool_q.score1P1, score1P2: @tool_q.score1P2, score1P3: @tool_q.score1P3, score1P4: @tool_q.score1P4, score1P5: @tool_q.score1P5, score1P5: @tool_q.score1P5, score1P6: @tool_q.score1P6, score2P1: @tool_q.score2P1, score2P2: @tool_q.score2P2, score2P3: @tool_q.score2P3, score2P4: @tool_q.score2P4, score2P5: @tool_q.score2P5, score2P5: @tool_q.score2P5, score2P6: @tool_q.score2P6, score3P1: @tool_q.score3P1, score3P2: @tool_q.score3P2, score3P3: @tool_q.score3P3, score3P4: @tool_q.score3P4, score3P5: @tool_q.score3P5, score3P5: @tool_q.score3P5, score3P6: @tool_q.score3P6, score4P1: @tool_q.score4P1, score4P2: @tool_q.score4P2, score4P3: @tool_q.score4P3, score4P4: @tool_q.score4P4, score4P5: @tool_q.score4P5, score4P5: @tool_q.score4P5, score4P6: @tool_q.score4P6 }
    end

    assert_redirected_to tool_q_path(assigns(:tool_q))
  end

  test "should show tool_q" do
    get :show, id: @tool_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool_q
    assert_response :success
  end

  test "should update tool_q" do
    patch :update, id: @tool_q, tool_q: { prompt1: @tool_q.prompt1, prompt2: @tool_q.prompt2, prompt3: @tool_q.prompt3, prompt4: @tool_q.prompt4, question: @tool_q.question, score1P1: @tool_q.score1P1, score1P2: @tool_q.score1P2, score1P3: @tool_q.score1P3, score1P4: @tool_q.score1P4, score1P5: @tool_q.score1P5, score1P5: @tool_q.score1P5, score1P6: @tool_q.score1P6, score2P1: @tool_q.score2P1, score2P2: @tool_q.score2P2, score2P3: @tool_q.score2P3, score2P4: @tool_q.score2P4, score2P5: @tool_q.score2P5, score2P5: @tool_q.score2P5, score2P6: @tool_q.score2P6, score3P1: @tool_q.score3P1, score3P2: @tool_q.score3P2, score3P3: @tool_q.score3P3, score3P4: @tool_q.score3P4, score3P5: @tool_q.score3P5, score3P5: @tool_q.score3P5, score3P6: @tool_q.score3P6, score4P1: @tool_q.score4P1, score4P2: @tool_q.score4P2, score4P3: @tool_q.score4P3, score4P4: @tool_q.score4P4, score4P5: @tool_q.score4P5, score4P5: @tool_q.score4P5, score4P6: @tool_q.score4P6 }
    assert_redirected_to tool_q_path(assigns(:tool_q))
  end

  test "should destroy tool_q" do
    assert_difference('ToolQ.count', -1) do
      delete :destroy, id: @tool_q
    end

    assert_redirected_to tool_qs_path
  end
end
