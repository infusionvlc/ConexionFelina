class Product < ApplicationRecord
  MAXIMUM_NAME_LENGTH = 50
  MINIMUM_STOCK_PRICE_VALUE = 0

  has_many :posessions

  validates :name, :stock, :price, presence: true
  validates :name, length: {maximum: MAXIMUM_NAME_LENGTH}
  validates :stock, :price, numericality: {only_integer: true, greater_than_or_equal_to: MINIMUM_STOCK_PRICE_VALUE}
end
