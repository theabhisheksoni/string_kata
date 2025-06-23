class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    return input.to_i if input.match(/^\d+$/)

    input.split(",").map(&:to_i).sum
  end
end
