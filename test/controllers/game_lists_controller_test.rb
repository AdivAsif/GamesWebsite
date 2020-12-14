require 'test_helper'

class GameListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
    @game_list = game_lists(:one)
  end

  test "should get index" do
    get game_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_game_list_url
    assert_response :success
  end

  test "should create game_list" do
    assert_difference('GameList.count') do
      post game_lists_url, params: { game_list: { games: @game_list.games, title: @game_list.title } }
    end

    assert_redirected_to game_list_url(GameList.last)
  end

  test "should show game_list" do
    get game_list_url(@game_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_list_url(@game_list)
    assert_response :success
  end

  test "should update game_list" do
    patch game_list_url(@game_list), params: { game_list: { games: @game_list.games, title: @game_list.title } }
    assert_redirected_to game_list_url(@game_list)
  end

  test "should destroy game_list" do
    assert_difference('GameList.count', -1) do
      delete game_list_url(@game_list)
    end

    assert_redirected_to game_lists_url
  end
end
