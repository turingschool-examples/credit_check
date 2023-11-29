require './lib/credit_card'
require './lib/credit_check'
require 'pry'

RSpec.describe CreditCard do

  it 'exists' do
    credit_card = CreditCard.new("5541808923795240", 15000)

    expect(credit_card).to be_a(CreditCard)
    expect(credit_card.card_number).to eq("5541808923795240")
    expect(credit_card.limit).to eq(15000)
  end

  it 'checks #last_four and #is_valid?' do
  credit_card = CreditCard.new("5541808923795240", 15000)
  
  credit_card.last_four
  credit_card.is_valid?

  expect(credit_card.last_four).to eq("5240")
  expect(credit_card.is_valid?).to eq("The number #{credit_card.card_number} is valid!")
  end
end