require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Game List'
    assert_select 'h1', 'Game List'
    assert_select 'p', 'You can view games in the database and add them to your list, save them and rate them!'
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Game List'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the following form to get in touch with us.'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
      {name: "Adiv", email: "asifadiv@gmail.com", message: "Hello"}
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
