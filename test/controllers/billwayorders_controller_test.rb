require 'test_helper'

class BillwayordersControllerTest < ActionController::TestCase
  setup do
    @billwayorder = billwayorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billwayorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billwayorder" do
    assert_difference('Billwayorder.count') do
      post :create, billwayorder: { acceptCost: @billwayorder.acceptCost, company_id: @billwayorder.company_id, consignee_id: @billwayorder.consignee_id, consignor_id: @billwayorder.consignor_id, deliverCost: @billwayorder.deliverCost, freightCost: @billwayorder.freightCost, goodsName: @billwayorder.goodsName, goodsPrice: @billwayorder.goodsPrice, insuranceCost: @billwayorder.insuranceCost, isTransfer: @billwayorder.isTransfer, line_id: @billwayorder.line_id, number: @billwayorder.number, orderNum: @billwayorder.orderNum, packingCost: @billwayorder.packingCost, paymentmethod_id: @billwayorder.paymentmethod_id, proxycollection: @billwayorder.proxycollection, total: @billwayorder.total, transferCost: @billwayorder.transferCost, truck_id: @billwayorder.truck_id, user_id: @billwayorder.user_id, volume: @billwayorder.volume, weight: @billwayorder.weight }
    end

    assert_redirected_to billwayorder_path(assigns(:billwayorder))
  end

  test "should show billwayorder" do
    get :show, id: @billwayorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billwayorder
    assert_response :success
  end

  test "should update billwayorder" do
    patch :update, id: @billwayorder, billwayorder: { acceptCost: @billwayorder.acceptCost, company_id: @billwayorder.company_id, consignee_id: @billwayorder.consignee_id, consignor_id: @billwayorder.consignor_id, deliverCost: @billwayorder.deliverCost, freightCost: @billwayorder.freightCost, goodsName: @billwayorder.goodsName, goodsPrice: @billwayorder.goodsPrice, insuranceCost: @billwayorder.insuranceCost, isTransfer: @billwayorder.isTransfer, line_id: @billwayorder.line_id, number: @billwayorder.number, orderNum: @billwayorder.orderNum, packingCost: @billwayorder.packingCost, paymentmethod_id: @billwayorder.paymentmethod_id, proxycollection: @billwayorder.proxycollection, total: @billwayorder.total, transferCost: @billwayorder.transferCost, truck_id: @billwayorder.truck_id, user_id: @billwayorder.user_id, volume: @billwayorder.volume, weight: @billwayorder.weight }
    assert_redirected_to billwayorder_path(assigns(:billwayorder))
  end

  test "should destroy billwayorder" do
    assert_difference('Billwayorder.count', -1) do
      delete :destroy, id: @billwayorder
    end

    assert_redirected_to billwayorders_path
  end
end
