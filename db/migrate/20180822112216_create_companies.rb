class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      
      t.integer :season
      t.string :name
      t.string :name_en
      t.string :service_name
      t.string :service_name_en
      t.boolean :isRegistered
      t.integer :register_num
      t.date :established_date
      t.boolean :isCorporated
      t.integer :corporated_num
      t.date :corporated_date
      t.boolean :co_CEO
      t.string :CEO
      t.string :address
      t.text :company_overview
      t.text :service_overview
      t.string :website
      t.string :sns
      t.integer :cellphone_num
      t.integer :phone_num
      t.integer :fax_num
      t.date :move_in_date
      t.date :move_out_date
      t.boolean :isBusinessStudent
      t.integer :mentoring
      t.string :files

      t.timestamps
    end
  end
end
