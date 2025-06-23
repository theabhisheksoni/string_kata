class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    string = input.gsub(/\s+/, ",")

    numbers = string.split(",").map(&:to_i)
    return numbers.sum
  end
end
