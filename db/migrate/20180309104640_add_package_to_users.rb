class AddPackageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user, :string
    add_reference :users, :package, foreign_key: true
  end
end
