class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name  #公司名称
      t.string :phone  #联系方式

      t.timestamps null: false
    end
  end
end
