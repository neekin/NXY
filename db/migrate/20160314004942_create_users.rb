class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :loginname
      t.string :password_digest
      t.string :auth_token
      t.boolean :isresponsible
      t.integer :company_id
      t.string :phone
      t.string :hasline

      t.timestamps null: false
    end
  end
end
