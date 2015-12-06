require 'test_helper'

class AboutTheProjectQsControllerTest < ActionController::TestCase
  setup do
    @about_the_project_q = about_the_project_qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_the_project_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_the_project_q" do
    assert_difference('AboutTheProjectQ.count') do
      post :create, about_the_project_q: { prompt1: @about_the_project_q.prompt1, prompt2: @about_the_project_q.prompt2, prompt3: @about_the_project_q.prompt3, prompt4: @about_the_project_q.prompt4, question: @about_the_project_q.question, score1P1: @about_the_project_q.score1P1, score1P2: @about_the_project_q.score1P2, score1P3: @about_the_project_q.score1P3, score1P4: @about_the_project_q.score1P4, score1P5: @about_the_project_q.score1P5, score1P5: @about_the_project_q.score1P5, score1P6: @about_the_project_q.score1P6, score2P1: @about_the_project_q.score2P1, score2P2: @about_the_project_q.score2P2, score2P3: @about_the_project_q.score2P3, score2P4: @about_the_project_q.score2P4, score2P5: @about_the_project_q.score2P5, score2P5: @about_the_project_q.score2P5, score2P6: @about_the_project_q.score2P6, score3P1: @about_the_project_q.score3P1, score3P2: @about_the_project_q.score3P2, score3P3: @about_the_project_q.score3P3, score3P4: @about_the_project_q.score3P4, score3P5: @about_the_project_q.score3P5, score3P5: @about_the_project_q.score3P5, score3P6: @about_the_project_q.score3P6, score4P1: @about_the_project_q.score4P1, score4P2: @about_the_project_q.score4P2, score4P3: @about_the_project_q.score4P3, score4P4: @about_the_project_q.score4P4, score4P5: @about_the_project_q.score4P5, score4P5: @about_the_project_q.score4P5, score4P6: @about_the_project_q.score4P6 }
    end

    assert_redirected_to about_the_project_q_path(assigns(:about_the_project_q))
  end

  test "should show about_the_project_q" do
    get :show, id: @about_the_project_q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_the_project_q
    assert_response :success
  end

  test "should update about_the_project_q" do
    patch :update, id: @about_the_project_q, about_the_project_q: { prompt1: @about_the_project_q.prompt1, prompt2: @about_the_project_q.prompt2, prompt3: @about_the_project_q.prompt3, prompt4: @about_the_project_q.prompt4, question: @about_the_project_q.question, score1P1: @about_the_project_q.score1P1, score1P2: @about_the_project_q.score1P2, score1P3: @about_the_project_q.score1P3, score1P4: @about_the_project_q.score1P4, score1P5: @about_the_project_q.score1P5, score1P5: @about_the_project_q.score1P5, score1P6: @about_the_project_q.score1P6, score2P1: @about_the_project_q.score2P1, score2P2: @about_the_project_q.score2P2, score2P3: @about_the_project_q.score2P3, score2P4: @about_the_project_q.score2P4, score2P5: @about_the_project_q.score2P5, score2P5: @about_the_project_q.score2P5, score2P6: @about_the_project_q.score2P6, score3P1: @about_the_project_q.score3P1, score3P2: @about_the_project_q.score3P2, score3P3: @about_the_project_q.score3P3, score3P4: @about_the_project_q.score3P4, score3P5: @about_the_project_q.score3P5, score3P5: @about_the_project_q.score3P5, score3P6: @about_the_project_q.score3P6, score4P1: @about_the_project_q.score4P1, score4P2: @about_the_project_q.score4P2, score4P3: @about_the_project_q.score4P3, score4P4: @about_the_project_q.score4P4, score4P5: @about_the_project_q.score4P5, score4P5: @about_the_project_q.score4P5, score4P6: @about_the_project_q.score4P6 }
    assert_redirected_to about_the_project_q_path(assigns(:about_the_project_q))
  end

  test "should destroy about_the_project_q" do
    assert_difference('AboutTheProjectQ.count', -1) do
      delete :destroy, id: @about_the_project_q
    end

    assert_redirected_to about_the_project_qs_path
  end
end
