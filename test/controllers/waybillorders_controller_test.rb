require 'test_helper'

class WaybillordersControllerTest < ActionController::TestCase
  setup do
    @waybillorder = waybillorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waybillorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waybillorder" do
    assert_difference('Waybillorder.count') do
      post :create, waybillorder: { acceptCost: @waybillorder.acceptCost, company_id: @waybillorder.company_id, consignee_id: @waybillorder.consignee_id, consignor_id: @waybillorder.consignor_id, deliverCost: @waybillorder.deliverCost, freightCost: @waybillorder.freightCost, goodsName3: @waybillorder.goodsName3, googdName2: @waybillorder.googdName2, googsName1: @waybillorder.googsName1, insuranceCost: @waybillorder.insuranceCost, isTransfer: @waybillorder.isTransfer, line_id: @waybillorder.line_id, number1: @waybillorder.number1, number2: @waybillorder.number2, number3: @waybillorder.number3, orderNum: @waybillorder.orderNum, otherCost: @waybillorder.otherCost, packingCost: @waybillorder.packingCost, paymentmenthod_id: @waybillorder.paymentmenthod_id, proxycollection: @waybillorder.proxycollection, total: @waybillorder.total, transferCost: @waybillorder.transferCost, transferDestintion: @waybillorder.transferDestintion, truck_id: @waybillorder.truck_id, user_id: @waybillorder.user_id, volume1: @waybillorder.volume1, volume2: @waybillorder.volume2, volume3: @waybillorder.volume3, weight1: @waybillorder.weight1, weight2: @waybillorder.weight2, weight3: @waybillorder.weight3 }
    end

    assert_redirected_to waybillorder_path(assigns(:waybillorder))
  end

  test "should show waybillorder" do
    get :show, id: @waybillorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waybillorder
    assert_response :success
  end

  test "should update waybillorder" do
    patch :update, id: @waybillorder, waybillorder: { acceptCost: @waybillorder.acceptCost, company_id: @waybillorder.company_id, consignee_id: @waybillorder.consignee_id, consignor_id: @waybillorder.consignor_id, deliverCost: @waybillorder.deliverCost, freightCost: @waybillorder.freightCost, goodsName3: @waybillorder.goodsName3, googdName2: @waybillorder.googdName2, googsName1: @waybillorder.googsName1, insuranceCost: @waybillorder.insuranceCost, isTransfer: @waybillorder.isTransfer, line_id: @waybillorder.line_id, number1: @waybillorder.number1, number2: @waybillorder.number2, number3: @waybillorder.number3, orderNum: @waybillorder.orderNum, otherCost: @waybillorder.otherCost, packingCost: @waybillorder.packingCost, paymentmenthod_id: @waybillorder.paymentmenthod_id, proxycollection: @waybillorder.proxycollection, total: @waybillorder.total, transferCost: @waybillorder.transferCost, transferDestintion: @waybillorder.transferDestintion, truck_id: @waybillorder.truck_id, user_id: @waybillorder.user_id, volume1: @waybillorder.volume1, volume2: @waybillorder.volume2, volume3: @waybillorder.volume3, weight1: @waybillorder.weight1, weight2: @waybillorder.weight2, weight3: @waybillorder.weight3 }
    assert_redirected_to waybillorder_path(assigns(:waybillorder))
  end

  test "should destroy waybillorder" do
    assert_difference('Waybillorder.count', -1) do
      delete :destroy, id: @waybillorder
    end

    assert_redirected_to waybillorders_path
  end
end
