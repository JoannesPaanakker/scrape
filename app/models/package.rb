class Package < ApplicationRecord
  has_many :users

  monetize :price_cents
end
