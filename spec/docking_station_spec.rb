# In spec/borisbike_spec.rb
require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  #it 'release_bike' do
  #it {expect(DockingStation).to respond_to (:release_bike)}
  it {is_expected.to respond_to :release_bike}

  it 'releases a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.release_bike).to be_a(Bike)
  end
end
