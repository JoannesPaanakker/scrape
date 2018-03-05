class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :price
      t.text :description
      t.string :photo
      t.string :prop_url
      t.text :XML
      t.text :HTML
      t.references :user, foreign_key: true
      t.references :portal, foreign_key: true

      t.timestamps
    end
  end
end
