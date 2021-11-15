require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  test "proper message is created" do
    message = Message.new(user_id: users(:fixture_user).id, message:"test message")
    assert message.save
  end

  test "can't create massage with empty body" do
    message = Message.new(user_id: users(:fixture_user).id)
    assert_not message.save
  end

  test "can't create message without owner user" do
    message = Message.new(message: "test message")
    assert_not message.save
  end 


end
