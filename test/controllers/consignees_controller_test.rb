require 'test_helper'

class ConsigneesControllerTest < ActionController::TestCase
  setup do
    @consignee = consignees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consignees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consignee" do
    assert_difference('Consignee.count') do
      post :create, consignee: { company_id: @consignee.company_id, name: @consignee.name, phone: @consignee.phone }
    end

    assert_redirected_to consignee_path(assigns(:consignee))
  end

  test "should show consignee" do
    get :show, id: @consignee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consignee
    assert_response :success
  end

  test "should update consignee" do
    patch :update, id: @consignee, consignee: { company_id: @consignee.company_id, name: @consignee.name, phone: @consignee.phone }
    assert_redirected_to consignee_path(assigns(:consignee))
  end

  test "should destroy consignee" do
    assert_difference('Consignee.count', -1) do
      delete :destroy, id: @consignee
    end

    assert_redirected_to consignees_path
  end
end
