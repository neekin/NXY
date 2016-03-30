class Company < ActiveRecord::Base

  has_many :lines
  has_many :consignors
end
