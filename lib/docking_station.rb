require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bikes
  DEFAULT_CAPACITY = 20
  def initialize
    @stored_bikes = []
  end

  def release_bike
      fail 'Error, no bikes available!' if empty?
      @stored_bikes.pop
  end

  def dock_bike (bike)
    fail 'Error, Another bike already docked' if full?
    @stored_bikes << bike
    #return @stored_bikes
  end

private
  def full?
    @stored_bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @stored_bikes.empty?
  end
end
