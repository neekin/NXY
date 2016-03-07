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
      post :create, waybillorder: { acceptCost: @waybillorder.acceptCost, company_id: @waybillorder.company_id, consignee_id: @waybillorder.consignee_id, consignor_id: @waybillorder.consignor_id, deliverCost: @waybillorder.deliverCost, destination_id: @waybillorder.destination_id, freightCost: @waybillorder.freightCost, goodsPrice: @waybillorder.goodsPrice, goodsname: @waybillorder.goodsname, insuranceCost: @waybillorder.insuranceCost, isTransfer: @waybillorder.isTransfer, number: @waybillorder.number, ordernum: @waybillorder.ordernum, packingCost: @waybillorder.packingCost, paymentmethod_id: @waybillorder.paymentmethod_id, place_id: @waybillorder.place_id, proxycollection: @waybillorder.proxycollection, total: @waybillorder.total, transferCost: @waybillorder.transferCost, truck_id: @waybillorder.truck_id, user_id: @waybillorder.user_id, volume: @waybillorder.volume, weight: @waybillorder.weight }
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
    patch :update, id: @waybillorder, waybillorder: { acceptCost: @waybillorder.acceptCost, company_id: @waybillorder.company_id, consignee_id: @waybillorder.consignee_id, consignor_id: @waybillorder.consignor_id, deliverCost: @waybillorder.deliverCost, destination_id: @waybillorder.destination_id, freightCost: @waybillorder.freightCost, goodsPrice: @waybillorder.goodsPrice, goodsname: @waybillorder.goodsname, insuranceCost: @waybillorder.insuranceCost, isTransfer: @waybillorder.isTransfer, number: @waybillorder.number, ordernum: @waybillorder.ordernum, packingCost: @waybillorder.packingCost, paymentmethod_id: @waybillorder.paymentmethod_id, place_id: @waybillorder.place_id, proxycollection: @waybillorder.proxycollection, total: @waybillorder.total, transferCost: @waybillorder.transferCost, truck_id: @waybillorder.truck_id, user_id: @waybillorder.user_id, volume: @waybillorder.volume, weight: @waybillorder.weight }
    assert_redirected_to waybillorder_path(assigns(:waybillorder))
  end

  test "should destroy waybillorder" do
    assert_difference('Waybillorder.count', -1) do
      delete :destroy, id: @waybillorder
    end

    assert_redirected_to waybillorders_path
  end
end
