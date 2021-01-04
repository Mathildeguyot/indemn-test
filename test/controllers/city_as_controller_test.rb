require 'test_helper'

class CityAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_a = city_as(:one)
  end

  test "should get index" do
    get city_as_url
    assert_response :success
  end

  test "should get new" do
    get new_city_a_url
    assert_response :success
  end

  test "should create city_a" do
    assert_difference('CityA.count') do
      post city_as_url, params: { city_a: { name: @city_a.name } }
    end

    assert_redirected_to city_a_url(CityA.last)
  end

  test "should show city_a" do
    get city_a_url(@city_a)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_a_url(@city_a)
    assert_response :success
  end

  test "should update city_a" do
    patch city_a_url(@city_a), params: { city_a: { name: @city_a.name } }
    assert_redirected_to city_a_url(@city_a)
  end

  test "should destroy city_a" do
    assert_difference('CityA.count', -1) do
      delete city_a_url(@city_a)
    end

    assert_redirected_to city_as_url
  end
end
