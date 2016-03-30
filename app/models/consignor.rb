class Consignor < ActiveRecord::Base
  validates_presence_of :name 
  belongs_to :company
  belongs_to :line
   has_many :waybillorders
end
