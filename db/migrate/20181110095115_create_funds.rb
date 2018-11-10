class CreateFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :funds do |t|
      t.datetime :when
      t.string :institution
      t.string :title
      t.string :content
      t.references :company, foreign_key: true
      t.string :bigo

      t.timestamps
    end
  end
end
