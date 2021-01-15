class Flight < ApplicationRecord
  validates :duration, :take_off, :departure_id, :arrival_id, presence: true

  belongs_to :departure, class_name: 'Airport'
  belongs_to :arrival, class_name: 'Airport'

  def formatted_date(datetime = take_off)
    datetime.strftime('%F at %H:%M')
  end

  def self.search(allowed_flight_params)
    # flight_params = [departure_id, arrival_id, take_off, passenger_count]
    
    # if allowed_flight_params == []
    #   @flights = Flight.all
    # else

      # @flights = Flight.where('departure_id = ? AND arrival_id = ? AND take_off = ?
      #   AND passenger_count = ?', params[:departure_id], params[:arrival_id], 
      #   params[:take_off], params[:passenger_count])
      
      # @flights = Flight.where('departure_id = ?', params[:departure_id])
      @flights = []
      @flights << Flight.find_by(departure_id: allowed_flight_params)
      @flights = @flights || Flight.all
    # end
  end
end
