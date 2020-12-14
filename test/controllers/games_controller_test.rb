require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { cover: @game.cover, genre: @game.genre, name: @game.name, rating: @game.rating, summary: @game.summary } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
