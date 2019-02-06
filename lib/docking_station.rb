require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bike

  def release_bike
      if @stored_bike == nil
        fail 'Error, no bikes available!'
      else
      return bike = Bike.new
    end
  end

  def dock_bike (bike)
    @stored_bike = bike
    return @stored_bike
  end
end
