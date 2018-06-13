require "rails_helper"

RSpec.describe ColonyValidator do

  def mock_relationships(colony)
    colony.location = mock_model('Location')
  end

  context "given a colony with an empty field" do
    it "must be invalid" do
      invalid_colony = Colony.new(name: nil)
      mock_relationships(invalid_colony)
      expect(invalid_colony).to_not be_valid
    end
  end

  context "given a colony with name length less than 20" do
    it "must be valid" do
      valid_colony = Colony.new(name: "Lorem")
      mock_relationships(valid_colony)
      expect(valid_colony).to be_valid
    end
  end

  context "given a colony with name length larger than 20" do
    it "must be invalid" do
      invalid_colony = Colony.new(name: "Lorem ipsum dolor sit amet, consectetuer adipiscinolLorem ipsum dolor sit amet, consectetuer adipiscinol")
      mock_relationships(invalid_colony)
      expect(invalid_colony).to_not be_valid
    end
  end

  context "given a colony with a bio length larger 512" do
    it "must be invalid" do
      invalid_colony = Colony.new(name: "Lorem", bio: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luc")
      mock_relationships(invalid_colony)
      expect(invalid_colony).to_not be_valid
    end
  end

  context "given a colony with a bio of length less than 512" do
    it "must be valid" do
      valid_colony = Colony.new(name: "Lorem", bio: "Lorem ipsum dolor sit")
      mock_relationships(valid_colony)
      expect(valid_colony).to be_valid
    end
  end
end
