class AddCompanyToDepart < ActiveRecord::Migration
  def change
    add_column :departs, :company_id, :integer
  end
end
