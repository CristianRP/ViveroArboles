class OrderDetail < ApplicationRecord
  belongs_to :invoice
  belongs_to :product
  belongs_to :municipality
end
