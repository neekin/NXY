json.array!(@waybillorders) do |waybillorder|
  json.extract! waybillorder, :id, :ordernum, :goodsname, :number, :weight, :volume, :freightCost, :goodsPrice, :insuranceCost, :packingCost, :deliverCost, :acceptCost, :isTransfer, :transferCost, :total, :place_id, :destination_id, :consignor_id, :consignee_id, :proxycollection, :truck_id, :company_id, :user_id, :paymentmethod_id
  json.url waybillorder_url(waybillorder, format: :json)
end
