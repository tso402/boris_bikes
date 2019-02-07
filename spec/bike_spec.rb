require './lib/bike.rb'
describe Bike do
  it {is_expected.to respond_to :working?}
  it 'bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'responds false if broken' do
    bike = Bike.new
    bike.broken
    expect(bike.working?).to eq false
  end
end
