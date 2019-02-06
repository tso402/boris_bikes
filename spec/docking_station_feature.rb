#irb
require './lib/docking_station'
station = DockingStation.new
bike = station.release_bike
bike.working?
station.dock_bike(bike)
station.stored_bike
