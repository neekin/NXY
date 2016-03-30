class Truck < ActiveRecord::Base
   has_many :departs
    has_many :waybillorders
end
