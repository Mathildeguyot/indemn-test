require 'test_helper'

class CityBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_b = city_bs(:one)
  end

  test "should get index" do
    get city_bs_url
    assert_response :success
  end

  test "should get new" do
    get new_city_b_url
    assert_response :success
  end

  test "should create city_b" do
    assert_difference('CityB.count') do
      post city_bs_url, params: { city_b: { address: @city_b.address } }
    end

    assert_redirected_to city_b_url(CityB.last)
  end

  test "should show city_b" do
    get city_b_url(@city_b)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_b_url(@city_b)
    assert_response :success
  end

  test "should update city_b" do
    patch city_b_url(@city_b), params: { city_b: { address: @city_b.address } }
    assert_redirected_to city_b_url(@city_b)
  end

  test "should destroy city_b" do
    assert_difference('CityB.count', -1) do
      delete city_b_url(@city_b)
    end

    assert_redirected_to city_bs_url
  end
end
