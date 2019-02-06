require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bikes
  def initialize
    @stored_bikes = []
  end

  def release_bike
      if @stored_bikes.length == 0
        fail 'Error, no bikes available!'
      else
      return bike = Bike.new
    end
  end

  def dock_bike (bike)
    fail 'Error, Another bike already docked' unless @stored_bikes.length < 20
    @stored_bikes << bike
    return @stored_bikes
  end
end
