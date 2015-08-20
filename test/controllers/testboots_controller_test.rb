require 'test_helper'

class TestbootsControllerTest < ActionController::TestCase
  setup do
    @testboot = testboots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testboots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testboot" do
    assert_difference('Testboot.count') do
      post :create, testboot: { name: @testboot.name }
    end

    assert_redirected_to testboot_path(assigns(:testboot))
  end

  test "should show testboot" do
    get :show, id: @testboot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testboot
    assert_response :success
  end

  test "should update testboot" do
    patch :update, id: @testboot, testboot: { name: @testboot.name }
    assert_redirected_to testboot_path(assigns(:testboot))
  end

  test "should destroy testboot" do
    assert_difference('Testboot.count', -1) do
      delete :destroy, id: @testboot
    end

    assert_redirected_to testboots_path
  end
end
