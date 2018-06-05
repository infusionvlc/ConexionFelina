require 'rails_helper'

RSpec.describe SponsorValidator do

  context 'given a sponsor with an empty field' do
    it 'must be invalid' do
      invalid_sponsor = Sponsor.new(start_date: nil)
      invalid_sponsor.cat = Cat.new(name: 'Nucita')
      invalid_sponsor.user = User.new(username: 'Viviane')

      expect(invalid_sponsor).to_not be_valid
    end
  end

  context 'given a sponsor with its last payment date earlier than today' do
    it 'must be valid' do
      valid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.yesterday)
      valid_sponsor.cat = Cat.new(name: 'Nucita')
      valid_sponsor.user = User.new(username: 'Viviane')

      expect(valid_sponsor).to be_valid
    end
  end

  context 'given a sponsor with its last payment date equal to today' do
    it 'must be valid' do
      valid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.today)
      valid_sponsor.cat = Cat.new(name: 'Nucita')
      valid_sponsor.user = User.new(username: 'Viviane')

      expect(valid_sponsor).to be_valid
    end
  end

  context 'given a sponsor with its last payment date later than today' do
    it 'must be invalid' do
      invalid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.tomorrow)
      invalid_sponsor.cat = Cat.new(name: 'Nucita')
      invalid_sponsor.user = User.new(username: 'Viviane')

      expect(invalid_sponsor).to_not be_valid
    end
  end

  context 'given a sponsor with a negative amount' do
    it 'must be invalid' do
      invalid_sponsor = Sponsor.new(amount: -1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.today)
      invalid_sponsor.cat = Cat.new(name: 'Nucita')
      invalid_sponsor.user = User.new(username: 'Viviane')

      expect(invalid_sponsor).to_not be_valid
    end
  end

  context 'given a sponsor with a zero amount' do
    it 'must be invalid' do
      invalid_sponsor = Sponsor.new(amount: 0, renovate: true, start_date: Date.yesterday, last_payment_date: Date.today)
      invalid_sponsor.cat = Cat.new(name: 'Nucita')
      invalid_sponsor.user = User.new(username: 'Viviane')

      expect(invalid_sponsor).to_not be_valid
    end
  end

  context 'given a sponsor with a positive amount' do
    it 'must be valid' do
      valid_sponsor = Sponsor.new(amount: 1, renovate: true, start_date: Date.yesterday, last_payment_date: Date.today)
      valid_sponsor.cat = Cat.new(name: 'Nucita')
      valid_sponsor.user = User.new(username: 'Viviane')

      expect(valid_sponsor).to be_valid
    end
  end

end