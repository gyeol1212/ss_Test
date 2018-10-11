class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      
      t.integer :season
      t.string :name
      t.string :name_en
      t.string :service_name
      t.string :service_name_en
      t.string :uniq_num

      t.boolean :is_registered
      t.boolean :is_individual
      t.integer :register_num
      t.date :register_date
      t.string :up_tae
      t.string :jong_mok1
      t.string :jong_mok2
      t.string :jong_mok3
      t.date :start_date
      t.date :move_in_date
      t.date :move_out_date
      t.string :address
      t.date :established_date

      t.boolean :is_corporated
      t.integer :corporated_num
      t.date :corporated_date

      t.integer :CEO_num
      t.string :CEO1
      t.string :CEO2
      t.string :CEO3
      t.string :CEO4
      t.string :CEO5
      t.string :CEO1_en
      t.string :CEO2_en
      t.string :CEO3_en
      t.string :CEO4_en
      t.string :CEO5_en

      t.text :company_overview
      t.text :service_overview
      t.string :website
      t.string :sns
      t.string :cellphone_num
      t.string :phone_num
      t.string :email
      t.boolean :is_business_student

      t.timestamps
    end
  end
end
