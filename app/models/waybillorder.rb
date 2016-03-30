class Waybillorder < ActiveRecord::Base
 validates_presence_of :googsName1
 belongs_to :consignor
 belongs_to :line
 belongs_to :consignee
 belongs_to :user
 belongs_to :paymentmethod
 belongs_to :truck
 belongs_to :depart
end
