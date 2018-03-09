class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :portal

  monetize :price_cents
end
