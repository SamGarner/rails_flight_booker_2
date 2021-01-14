class Flight < ApplicationRecord
  validates :duration, :take_off, :departure_id, :arrival_id, presence: true
end
