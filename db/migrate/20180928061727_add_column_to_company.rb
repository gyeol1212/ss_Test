class AddColumnToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :represent_name, :integer
  end
end
