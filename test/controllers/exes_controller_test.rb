require 'test_helper'

class ExesControllerTest < ActionController::TestCase
  setup do
    @ex = exes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ex" do
    assert_difference('Ex.count') do
      post :create, ex: { name: @ex.name }
    end

    assert_redirected_to ex_path(assigns(:ex))
  end

  test "should show ex" do
    get :show, id: @ex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ex
    assert_response :success
  end

  test "should update ex" do
    patch :update, id: @ex, ex: { name: @ex.name }
    assert_redirected_to ex_path(assigns(:ex))
  end

  test "should destroy ex" do
    assert_difference('Ex.count', -1) do
      delete :destroy, id: @ex
    end

    assert_redirected_to exes_path
  end
end
