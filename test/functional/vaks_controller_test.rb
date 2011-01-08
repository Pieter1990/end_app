require 'test_helper'

class VaksControllerTest < ActionController::TestCase
  setup do
    @vak = vaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vak" do
    assert_difference('Vak.count') do
      post :create, :vak => @vak.attributes
    end

    assert_redirected_to vak_path(assigns(:vak))
  end

  test "should show vak" do
    get :show, :id => @vak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vak.to_param
    assert_response :success
  end

  test "should update vak" do
    put :update, :id => @vak.to_param, :vak => @vak.attributes
    assert_redirected_to vak_path(assigns(:vak))
  end

  test "should destroy vak" do
    assert_difference('Vak.count', -1) do
      delete :destroy, :id => @vak.to_param
    end

    assert_redirected_to vaks_path
  end
end
