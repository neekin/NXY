require 'test_helper'

class ConsignorsControllerTest < ActionController::TestCase
  setup do
    @consignor = consignors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consignors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consignor" do
    assert_difference('Consignor.count') do
      post :create, consignor: { company_id: @consignor.company_id, name: @consignor.name, phone: @consignor.phone }
    end

    assert_redirected_to consignor_path(assigns(:consignor))
  end

  test "should show consignor" do
    get :show, id: @consignor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consignor
    assert_response :success
  end

  test "should update consignor" do
    patch :update, id: @consignor, consignor: { company_id: @consignor.company_id, name: @consignor.name, phone: @consignor.phone }
    assert_redirected_to consignor_path(assigns(:consignor))
  end

  test "should destroy consignor" do
    assert_difference('Consignor.count', -1) do
      delete :destroy, id: @consignor
    end

    assert_redirected_to consignors_path
  end
end
