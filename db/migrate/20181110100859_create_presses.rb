class CreatePresses < ActiveRecord::Migration[5.2]
  def change
    create_table :presses do |t|
      t.datetime :when
      t.string :press_name
      t.string :title
      t.string :link
      t.string :bigo
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
