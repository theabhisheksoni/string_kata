class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    if input.start_with?("//")
      delimiter, input = input[2..].split("\n", 2)
      delimiters = [Regexp.escape(delimiter)]
      nums = input.split(Regexp.union(delimiters)).map(&:to_i)
    else
      string = input.gsub(/\s+/, ",")
      nums = string.split(",").map(&:to_i)
    end
    negatives = nums.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(',')}" if negatives.any?
    return nums.sum
  end
end
