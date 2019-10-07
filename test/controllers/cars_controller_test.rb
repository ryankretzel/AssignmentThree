require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { VIN: @car.VIN, make_id: @car.make_id, name: @car.name } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { VIN: @car.VIN, make_id: @car.make_id, name: @car.name } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end

  test "should find Fusion" do
    get search_cars_url, params: {query: "Fusion"}
    assert_select 'td', 'Fusion'
  end

  test "search always returns 200" do
    get search_cars_url, params: {query: "Fusion"}
    assert_equal 200, status
  end

  test "shouldn't find Donut" do
    get search_cars_url, params: {query: "Donut"}
    assert_select 'td', false
  end

end
