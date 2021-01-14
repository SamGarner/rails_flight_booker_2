class Flight < ApplicationRecord
  validates :duration, :take_off, :departure_id, :arrival_id, presence: true

  belongs_to :departure, class_name: 'Airport'
  belongs_to :arrival, class_name: 'Airport'

  def formatted_date(datetime = take_off)
    datetime.strftime('%F at %H:%M')
  end
end
