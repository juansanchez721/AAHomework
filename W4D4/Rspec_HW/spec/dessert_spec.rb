require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new}

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq("type")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(8)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be(Array)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { raise "Please enter an integer."}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to include('potato')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to match_array(dessert.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.ingredients).to_not include('potato')
    end

    # it "raises an error if the amount is greater than the quantity" do
    #   # expect { raise "amount greater than capacity"}.to raise_error
    # end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
