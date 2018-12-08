require 'rails_helper'

LORE_IPSUM_250 = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pretium felis sit amet libero congue, sed bibendum tortor eleifend. Nam imperdiet pellentesque magna, sed consectetur est egestas vitae. Praesent tempus lacus nec finibus tincidunt amet.'
LORE_IPSUM_513 = + LORE_IPSUM_250 + LORE_IPSUM_250 + "1234567890123"

RSpec.describe Cat, :type => :model do

  def mock_relationships(cat)
    cat.colony = mock_model("Colony")
  end

  context 'given a cat with only name' do
    it 'must be valid' do
      valid_cat = Cat.new(name: "Kitty", saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to be_valid
    end
  end

  context 'given a cat without name' do
    it 'must not be valid' do
      valid_cat = Cat.new(saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to_not be_valid
    end
  end

  context 'given a cat with 21 characters name' do
    it 'must not be valid' do
      valid_cat = Cat.new(name: "123456789012345678901", saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to_not be_valid
    end
  end

  context 'given a cat with name and bio with 250 words' do
    it 'must be valid' do
      valid_cat = Cat.new(name: "Kitty", bio: LORE_IPSUM_250, saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to be_valid
    end
  end

  context 'given a cat with name and bio with 513 words' do
    it 'must not be valid' do
      valid_cat = Cat.new(name: "Kitty", bio: LORE_IPSUM_513, saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to_not be_valid
    end
  end

  context 'given a cat with name and birth_date which is yesterday' do
    it 'must be valid' do
      valid_cat = Cat.new(name: "Kitty", birthday_date: Date.yesterday, saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to be_valid
    end
  end

  context 'given a cat with name and birth_date which is tomorrow' do
    it 'must not be valid' do
      valid_cat = Cat.new(name: "Kitty", birthday_date: Date.tomorrow, saved_state: "active")
       mock_relationships(valid_cat)
      expect(valid_cat).to_not be_valid
    end
  end

end
