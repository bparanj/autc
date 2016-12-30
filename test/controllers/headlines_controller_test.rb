require 'test_helper'

class HeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headline = headlines(:one)
  end

  test "should get index" do
    get headlines_url
    assert_response :success
  end

  test "should get new" do
    get new_headline_url
    assert_response :success
  end

  test "should create headline" do
    assert_difference('Headline.count') do
      post headlines_url, params: { headline: { title: @headline.title } }
    end

    assert_redirected_to headline_url(Headline.last)
  end

  test "should show headline" do
    get headline_url(@headline)
    assert_response :success
  end

  test "should get edit" do
    get edit_headline_url(@headline)
    assert_response :success
  end

  test "should update headline" do
    patch headline_url(@headline), params: { headline: { title: @headline.title } }
    assert_redirected_to headline_url(@headline)
  end

  test "should destroy headline" do
    assert_difference('Headline.count', -1) do
      delete headline_url(@headline)
    end

    assert_redirected_to headlines_url
  end
end
