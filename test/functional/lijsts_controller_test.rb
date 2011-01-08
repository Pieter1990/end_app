require 'test_helper'

class LijstsControllerTest < ActionController::TestCase
  setup do
    @lijst = lijsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lijsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lijst" do
    assert_difference('Lijst.count') do
      post :create, :lijst => @lijst.attributes
    end

    assert_redirected_to lijst_path(assigns(:lijst))
  end

  test "should show lijst" do
    get :show, :id => @lijst.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lijst.to_param
    assert_response :success
  end

  test "should update lijst" do
    put :update, :id => @lijst.to_param, :lijst => @lijst.attributes
    assert_redirected_to lijst_path(assigns(:lijst))
  end

  test "should destroy lijst" do
    assert_difference('Lijst.count', -1) do
      delete :destroy, :id => @lijst.to_param
    end

    assert_redirected_to lijsts_path
  end
end
