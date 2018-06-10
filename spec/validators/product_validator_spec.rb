require "rails_helper"

RSpec.describe ProductValidator do
  context "given a product with an empty field" do
    it "must be invalid" do
      invalid_product = Product.new(name: nil, stock: nil, price: nil)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with name length less than 50" do
    it "must be valid" do
      valid_product = Product.new(name: "Lorem", stock: 1, price: 1)
      expect(valid_product).to be_valid
    end
  end

  context "given a product with name length larger than 50" do
    it "must be valid" do
      invalid_product = Product.new(name: "Lorem ipsum dolor sit amet, consectetuer adipiscinol", stock: 1, price: 1)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with a negative stock" do
    it "must be invalid" do
      invalid_product = Product.new(name: "Lorem", stock: -1, price: 1)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with a negative price" do
    it "must be invalid" do
      invalid_product = Product.new(name: "Lorem", stock: 1, price: -1)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with a zero stock" do
    it "must be invalid" do
      invalid_product = Product.new(name: "Lorem", stock: 0, price: 1)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with a zero price" do
    it "must be invalid" do
      invalid_product = Product.new(name: "Lorem", stock: 1, price: 0)

      expect(invalid_product).to_not be_valid
    end
  end

  context "given a product with a positive stock" do
    it "must be valid" do
      valid_product = Product.new(name: "Lorem", stock: 1, price: 1)

      expect(valid_product).to be_valid
    end
  end

  context "given a product with a positive price" do
    it "must be valid" do
      valid_product = Product.new(name: "Lorem", stock: 1, price: 1)

      expect(valid_product).to be_valid
    end
  end
end
