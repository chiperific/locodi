# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get work" do
    get :work
    assert_response :success
  end

  test "should get board" do
    get :board
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

  test "should get social" do
    get :social
    assert_response :success
  end

end
