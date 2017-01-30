require 'test_helper'

class EmpesControllerTest < ActionController::TestCase
  setup do
    @empe = empes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empe" do
    assert_difference('Empe.count') do
      post :create, empe: { e_id: @empe.e_id, exp: @empe.exp, join_date: @empe.join_date, name: @empe.name, status: @empe.status }
    end

    assert_redirected_to empe_path(assigns(:empe))
  end

  test "should show empe" do
    get :show, id: @empe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empe
    assert_response :success
  end

  test "should update empe" do
    patch :update, id: @empe, empe: { e_id: @empe.e_id, exp: @empe.exp, join_date: @empe.join_date, name: @empe.name, status: @empe.status }
    assert_redirected_to empe_path(assigns(:empe))
  end

  test "should destroy empe" do
    assert_difference('Empe.count', -1) do
      delete :destroy, id: @empe
    end

    assert_redirected_to empes_path
  end
end
