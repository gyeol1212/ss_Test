class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.datetime :when
      t.string :institution
      t.string :title
      t.text :content
      t.string :bigo
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
