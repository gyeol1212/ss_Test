class AddPermittedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :permitted, :boolean, default: false
  end
end
