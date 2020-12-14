require "application_system_test_case"

class GameListsTest < ApplicationSystemTestCase
  setup do
    @game_list = game_lists(:one)
  end

  test "visiting the index" do
    visit game_lists_url
    assert_selector "h1", text: "Game Lists"
  end

  test "creating a Game list" do
    visit game_lists_url
    click_on "New Game List"

    fill_in "Game", with: @game_list.game
    fill_in "Title", with: @game_list.title
    click_on "Create Game list"

    assert_text "Game list was successfully created"
    click_on "Back"
  end

  test "updating a Game list" do
    visit game_lists_url
    click_on "Edit", match: :first

    fill_in "Game", with: @game_list.game
    fill_in "Title", with: @game_list.title
    click_on "Update Game list"

    assert_text "Game list was successfully updated"
    click_on "Back"
  end

  test "destroying a Game list" do
    visit game_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game list was successfully destroyed"
  end
end
