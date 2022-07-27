require "./lib/boat"
require "./lib/renter"

RSpec.describe Renter do
  let(:renter) { Renter.new("Patrick Star", "4242424242424242") }

  it 'exists' do
    expect(renter).to be_instance_of(Renter)
    expect(renter.name).to eq("Patrick Star")
    expect(renter.credit_card_number).to eq("4242424242424242")
  end


end
