class Consignee < ActiveRecord::Base
  validates :name , :presence => true
  belongs_to :company
  belongs_to :line
    has_many :waybillorders
end
