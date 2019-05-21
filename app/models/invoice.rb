class Invoice < ApplicationRecord
  belongs_to :employee
  belongs_to :payment
  belongs_to :store
  belongs_to :customer
end
