class AddMaxlistAndMaxportToPackages < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :maxlist, :integer
    add_column :packages, :maxport, :integer
  end
end
