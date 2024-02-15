require 'rspec'
require './lib/credit_card'

RSpec.describe CreditCard do 
  it "exists" do 
    credit_card = CreditCard.new("5541808923795240", 10000)
  end 

  it "return card number" do
    credit_card = CreditCard.new("5541808923795240", 10000)
    card_number = credit_card.card_number
    expect(card_number).to eq "5541808923795240"
  end

  it "return card limit" do
    credit_card = CreditCard.new("5541808923795240", 10000)
    card_limit = credit_card.limit
    expect(card_limit).to eq(10000)
  end

  it "returns if credit card is valid" do
    credit_card = CreditCard.new("5541808923795240", 10000)
    status = credit_card.is_valid?
    expect(status).to eq true
  end

  it "returns if credit card is invalid" do
    credit_card = CreditCard.new("5541801923795240", 1)
    status = credit_card.is_valid?
    expect(status).to eq false
  end

  it "returns the last four digits" do
    credit_card = CreditCard.new("5541801923795240", 1)
    last_four = credit_card.last_four
    expect(last_four).to eq '5240'
  end
end