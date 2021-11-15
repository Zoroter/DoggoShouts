require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "proper user is created" do
    user = User.create(username: "example_name", email:"wacek@placek.com", password: "fooooooo")
    assert user.save
  end

  test "user with password shorter than 6 signs can't be created" do
    user = User.new(username: "example_name", email:"wacek@placek.com", password: "foooo")
    assert_not user.save
  end

  test "password longer than 128 signs isn't permited" do 
    user = User.new(username: "example_name", email:"wacek@placek.com", password: "ffofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofofo")
    assert_not user.save
  end

  test "user with improper email can't be created" do
    user = User.new(username: "example_name", email:"wacek", password: "foooo")
    assert_not user.save
  end 

  test "user with blank password can't be created" do
    user = User.new(username: "example_name", email:"wacek@placek.com")
    assert_not user.save 
  end

  test "can't create user with duplcated name" do
    User.create(username: "example_name", email:"wacek@placek.com", password: "fooooooooo")
    user = User.new(username: "example_name", email:"wacek1@placek.com", password: "foooooooooooo")
    assert_not user.save
  end

  test "can't create user with duplcated email" do
    User.create(username: "example_name", email:"wacek@placek.com", password: "fooooooooo")
    user = User.new(username: "example_name1", email:"wacek@placek.com", password: "foooooooooooo")
    assert_not user.save
  end

  test "can't create user with username longer than 32 signs" do
    user = User.new(username: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", email:"wacek@placek.com", password: "foooooooo")
    assert_not user.save
  end

  test "can't create user with email longer than 64 signs" do
    user = User.new(username: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", email:"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@pl.com", password: "foooooooo")
    assert_not user.save
  end

  


end
