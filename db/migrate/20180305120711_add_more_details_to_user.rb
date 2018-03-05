class AddMoreDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :comp_name, :string
    add_column :users, :comp_url, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
  end
end
