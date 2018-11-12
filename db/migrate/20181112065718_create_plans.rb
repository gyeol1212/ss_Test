class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.datetime :when
      t.string :category
      t.text :content
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
