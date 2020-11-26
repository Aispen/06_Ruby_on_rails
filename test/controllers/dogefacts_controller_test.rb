require 'test_helper'

class DogefactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dogefact = dogefacts(:one)
  end

  test "should get index" do
    get dogefacts_url
    assert_response :success
  end

  test "should get new" do
    get new_dogefact_url
    assert_response :success
  end

  test "should create dogefact" do
    assert_difference('Dogefact.count') do
      post dogefacts_url, params: { dogefact: { context: @dogefact.context } }
    end

    assert_redirected_to dogefact_url(Dogefact.last)
  end

  test "should show dogefact" do
    get dogefact_url(@dogefact)
    assert_response :success
  end

  test "should get edit" do
    get edit_dogefact_url(@dogefact)
    assert_response :success
  end

  test "should update dogefact" do
    patch dogefact_url(@dogefact), params: { dogefact: { context: @dogefact.context } }
    assert_redirected_to dogefact_url(@dogefact)
  end

  test "should destroy dogefact" do
    assert_difference('Dogefact.count', -1) do
      delete dogefact_url(@dogefact)
    end

    assert_redirected_to dogefacts_url
  end
end
