# In spec/borisbike_spec.rb
require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  #it 'release_bike' do
  #it {expect(DockingStation).to respond_to (:release_bike)}
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to :dock_bike}

  it 'releases a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.release_bike).to be_a(Bike)
  end

  it 'docks a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock_bike(bike)).to eq bike
  end

  it 'shows docked bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.stored_bike).to eq bike
  end
end
