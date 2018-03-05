class CreatePortals < ActiveRecord::Migration[5.1]
  def change
    create_table :portals do |t|
      t.string :name
      t.string :country
      t.string :portal_url
      t.boolean :premium
      t.integer :cost

      t.timestamps
    end
  end
end
