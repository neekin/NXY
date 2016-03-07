class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :loginname #登录名
      t.string :password_digest  #用户密码
      t.string :auth_token  #识别码
      t.integer :company_id  #公司ID
      t.string :phone   #联系方式

      t.timestamps null: false
    end
  end
end
