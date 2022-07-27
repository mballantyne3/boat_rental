require "./lib/boat"
require "./lib/renter"

RSpec.describe Boat do
  let(:kayak) { Boat.new(:kayak, 20) }

  it 'exists' do
    expect(kayak).to be_instance_of(Boat)
    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
    expect(kayak.hours_rented).to eq(0)
  end

  it 'can rent a boat' do
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour
    expect(kayak.hours_rented).to eq(3)
  end
end
