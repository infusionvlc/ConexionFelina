require "rails_helper"

RSpec.describe TaskValidator do
  context "given a task with an empty field" do
    it "must be invalid" do
      invalid_task = Task.new(name: nil)
      expect(invalid_task).to_not be_valid
    end
  end

  context "given a task with name length less than 20" do
    it "must be valid" do
      valid_task = Task.new(name: "Lorem")
      expect(valid_task).to be_valid
    end
  end

  context "given a task with name length larger than 20" do
    it "must be valid" do
      invalid_task = Task.new(name: "Lorem ipsum dolor sit amet, consectetuer adipiscinol")
      expect(invalid_task).to_not be_valid
    end
  end

  context "given a task with a description length larger 512" do
    it "must be invalid" do
      invalid_task = Task.new(name: "Lorem", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elem")
      expect(invalid_task).to_not be_valid
    end
  end

  context "given a task with a description of length less than 512" do
    it "must be valid" do
      valid_task = Task.new(name: "Lorem", description: "Lorem ipsum dolor sit")
      expect(valid_task).to be_valid
    end
  end
end
