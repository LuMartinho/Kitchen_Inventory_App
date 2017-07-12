require 'test_helper'

class AlisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ali = alis(:one)
  end

  test "should get index" do
    get alis_url
    assert_response :success
  end

  test "should get new" do
    get new_ali_url
    assert_response :success
  end

  test "should create ali" do
    assert_difference('Ali.count') do
      post alis_url, params: { ali: { Name: @ali.Name } }
    end

    assert_redirected_to ali_url(Ali.last)
  end

  test "should show ali" do
    get ali_url(@ali)
    assert_response :success
  end

  test "should get edit" do
    get edit_ali_url(@ali)
    assert_response :success
  end

  test "should update ali" do
    patch ali_url(@ali), params: { ali: { Name: @ali.Name } }
    assert_redirected_to ali_url(@ali)
  end

  test "should destroy ali" do
    assert_difference('Ali.count', -1) do
      delete ali_url(@ali)
    end

    assert_redirected_to alis_url
  end
end
