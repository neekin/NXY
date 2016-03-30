class User < ActiveRecord::Base
  has_secure_password
  #添加用户验证
  before_create { generate_token(:auth_token) }
  validates :loginname , :presence => true
  validates_uniqueness_of :loginname
  
   has_many :waybillorders
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column =>self[column])
  end
end
