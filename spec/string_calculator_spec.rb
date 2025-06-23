require_relative "../string_calculator.rb"

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number for a single input" do
      expect(StringCalculator.add("5")).to eq(5)
    end
  end
end
