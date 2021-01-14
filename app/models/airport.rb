class Airport < ApplicationRecord
  validates :code, :city, presence: true
end
