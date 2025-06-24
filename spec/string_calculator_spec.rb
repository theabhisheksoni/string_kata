require_relative "../string_calculator.rb"

RSpec.describe StringCalculator do
  describe ".add" do
    before(:each) do
      @calc = StringCalculator.new
    end

    it "returns 0 for an empty string" do
      expect(@calc.add("")).to eq(0)
    end

    it "returns the number for a single input" do
      expect(@calc.add("5")).to eq(5)
    end

    it "returns sum for two comma-separated numbers" do
      expect(@calc.add("1,2")).to eq(3)
    end

    it "supports newline as delimiter" do
      expect(@calc.add("1\n2,3")).to eq(6)
    end

    it "supports custom single-character delimiter" do
      expect(@calc.add("//;\n1;2")).to eq(3)
    end

    it "raises error for negative numbers" do
      expect { @calc.add("1,-2") }.to raise_error("Negatives not allowed: -2")
    end

    it "raises error for multiple negative numbers" do
      expect { @calc.add("-1,-2") }.to raise_error("Negatives not allowed: -1,-2")
    end
  end
end
