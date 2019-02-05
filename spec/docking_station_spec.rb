# In spec/borisbike_spec.rb
require "./lib/docking_station"
describe DockingStation do
  it 'release_bike' do
    expect(docking_station).to respond_to(:release_bike)
  end
end
