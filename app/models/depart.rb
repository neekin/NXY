class Depart < ActiveRecord::Base
   belongs_to :truck
    has_many :waybillorders
end
