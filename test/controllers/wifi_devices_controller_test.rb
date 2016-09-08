require 'test_helper'

class WifiDevicesControllerTest < ActionController::TestCase
  setup do
    @wifi_device = wifi_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wifi_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wifi_device" do
    assert_difference('WifiDevice.count') do
      post :create, wifi_device: { alerted: @wifi_device.alerted, park_id: @wifi_device.park_id }
    end

    assert_redirected_to wifi_device_path(assigns(:wifi_device))
  end

  test "should show wifi_device" do
    get :show, id: @wifi_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wifi_device
    assert_response :success
  end

  test "should update wifi_device" do
    patch :update, id: @wifi_device, wifi_device: { alerted: @wifi_device.alerted, park_id: @wifi_device.park_id }
    assert_redirected_to wifi_device_path(assigns(:wifi_device))
  end

  test "should destroy wifi_device" do
    assert_difference('WifiDevice.count', -1) do
      delete :destroy, id: @wifi_device
    end

    assert_redirected_to wifi_devices_path
  end
end
