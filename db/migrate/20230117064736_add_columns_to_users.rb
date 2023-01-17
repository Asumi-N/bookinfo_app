class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :icon, :string
    add_column :users, :introduce, :text
  end
end
