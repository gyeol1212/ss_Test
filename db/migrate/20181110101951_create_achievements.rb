class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.datetime :when
      t.string :content
      t.references :company, foreign_key: true
      t.string :bigo

      t.timestamps
    end
  end
end
