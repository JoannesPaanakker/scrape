class AddPriceToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_monetize :transactions, :price, currency: { present: false }
  end
end
