class Department < ApplicationRecord
  has_many :municipalities
  belongs_to :region
end
