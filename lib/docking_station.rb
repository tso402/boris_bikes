require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bike

  def release_bike
    return bike = Bike.new
  end

  def dock_bike (bike)
    @stored_bike = bike
    return @stored_bike
  end
end
