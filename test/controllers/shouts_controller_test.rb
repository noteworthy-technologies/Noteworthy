require 'test_helper'

class ShoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shout = shouts(:one)
  end

  test "should get index" do
    get shouts_url
    assert_response :success
  end

  test "should get new" do
    get new_shout_url
    assert_response :success
  end

  test "should create shout" do
    assert_difference('Shout.count') do
      post shouts_url, params: { shout: { content: @shout.content, title: @shout.title } }
    end

    assert_redirected_to shout_url(Shout.last)
  end

  test "should show shout" do
    get shout_url(@shout)
    assert_response :success
  end

  test "should get edit" do
    get edit_shout_url(@shout)
    assert_response :success
  end

  test "should update shout" do
    patch shout_url(@shout), params: { shout: { content: @shout.content, title: @shout.title } }
    assert_redirected_to shout_url(@shout)
  end

  test "should destroy shout" do
    assert_difference('Shout.count', -1) do
      delete shout_url(@shout)
    end

    assert_redirected_to shouts_url
  end
end
