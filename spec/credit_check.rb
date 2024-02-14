require 'rspec'
require './lib/credit_check'

RSpec.describe "valid_card" do
  it "determines if valid card" do
    result = valid_card("5541808923795240")
    expect(result).to eq(0)
  end
end