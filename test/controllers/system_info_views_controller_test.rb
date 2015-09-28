require 'test_helper'

class SystemInfoViewsControllerTest < ActionController::TestCase
  setup do
    @system_info_view = system_info_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_info_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_info_view" do
    assert_difference('SystemInfoView.count') do
      post :create, system_info_view: { ap_server_info_id: @system_info_view.ap_server_info_id, java_info_id: @system_info_view.java_info_id, name: @system_info_view.name, number: @system_info_view.number, os_info_id: @system_info_view.os_info_id }
    end

    assert_redirected_to system_info_view_path(assigns(:system_info_view))
  end

  test "should show system_info_view" do
    get :show, id: @system_info_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_info_view
    assert_response :success
  end

  test "should update system_info_view" do
    patch :update, id: @system_info_view, system_info_view: { ap_server_info_id: @system_info_view.ap_server_info_id, java_info_id: @system_info_view.java_info_id, name: @system_info_view.name, number: @system_info_view.number, os_info_id: @system_info_view.os_info_id }
    assert_redirected_to system_info_view_path(assigns(:system_info_view))
  end

  test "should destroy system_info_view" do
    assert_difference('SystemInfoView.count', -1) do
      delete :destroy, id: @system_info_view
    end

    assert_redirected_to system_info_views_path
  end
end
