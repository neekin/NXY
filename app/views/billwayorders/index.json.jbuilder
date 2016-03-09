json.array!(@billwayorders) do |billwayorder|
  json.extract! billwayorder, :id, :orderNum, :goodsName, :number, :weight, :volume, :freightCost, :goodsPrice, :insuranceCost, :packingCost, :deliverCost, :acceptCost, :isTransfer, :transferCost, :total, :consignor_id, :consignee_id, :proxycollection, :truck_id, :company_id, :user_id, :paymentmethod_id, :line_id
  json.url billwayorder_url(billwayorder, format: :json)
end
