class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def new
  end

  def show
  end

  def create
  end
end
