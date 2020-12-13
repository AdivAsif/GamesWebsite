require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("asifadiv@gmail.com", "Adiv Asif", @message = "Hello")
    assert_equal ['info@games.com'], mail.to
    assert_equal ['info@games.com'], mail.from
  end
end
