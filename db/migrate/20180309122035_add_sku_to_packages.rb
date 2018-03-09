class AddSkuToPackages < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :sku, :string
  end
end
