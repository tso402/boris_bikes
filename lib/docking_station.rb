require './lib/bike.rb'

class DockingStation
  attr_reader :stored_bikes, :capacity
  DEFAULT_CAPACITY = 20
  def initialize (capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'Error, no bikes available!' if empty?
      n = (@stored_bikes.count) - 1
        while @stored_bikes[n].working? == false do
          fail 'Error, no working bikes available!' if n == 0
          n -= 1
        end
        released_bike = @stored_bikes[n]
        @stored_bikes.delete_at(n)
        released_bike
  end

  def dock_bike (bike)
    fail 'Error, this docking station is full' if full?
    @stored_bikes << bike
    #return @stored_bikes
  end

private
  def full?
    @stored_bikes.count >= @capacity
  end

  def empty?
    @stored_bikes.empty?
  end
end
