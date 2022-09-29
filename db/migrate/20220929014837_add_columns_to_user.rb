class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :cellphone, :string
    add_column :users, :avatar_url, :string
    add_column :users, :country, :string
    add_column :users, :address, :string
    add_column :users, :role, :string
    add_column :users, :identification_number, :string
  end
end
