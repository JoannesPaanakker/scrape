class Portal < ApplicationRecord
  has_many :properties
  has_many :transactions
end
