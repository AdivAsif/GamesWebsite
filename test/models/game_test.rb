require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty game' do
    game = Game.new

    game.save
    refute game.valid?
  end

  test 'should save valid game' do
    game = Game.new

    game.name = 'My Game'
    game.summary = 'My Game is good.'
    game.cover = 'amongus.jpg'
    game.rating = 10
    game.genre = 'Test'
    
    game.save
    assert game.valid?
  end

  test 'should not save duplicate game name' do
    game1 = Game.new
    game1.name = 'My Game'
    game1.summary = 'My Game is good.'
    game1.cover = 'amongus.jpg'
    game1.rating = 10
    game1.genre = 'Test'
    game1.save
    assert game1.valid?

    game2 = Game.new
    game2.name = 'My Game'
    game2.summary = 'My Game is good.'
    game2.cover = 'amongus.jpg'
    game2.rating = 10
    game2.genre = 'Test'
    game2.save
    refute game2.valid?
  end
end
