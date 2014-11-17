require 'test_helper'

class AlexesControllerTest < ActionController::TestCase
  setup do
    @alex = alexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alex" do
    assert_difference('Alex.count') do
      post :create, alex: { abs: @alex.abs, name: @alex.name }
    end

    assert_redirected_to alex_path(assigns(:alex))
  end

  test "should show alex" do
    get :show, id: @alex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alex
    assert_response :success
  end

  test "should update alex" do
    patch :update, id: @alex, alex: { abs: @alex.abs, name: @alex.name }
    assert_redirected_to alex_path(assigns(:alex))
  end

  test "should destroy alex" do
    assert_difference('Alex.count', -1) do
      delete :destroy, id: @alex
    end

    assert_redirected_to alexes_path
  end
end
