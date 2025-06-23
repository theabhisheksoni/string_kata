class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    if input.start_with?("//")
      delimiter, input = input[2..].split("\n", 2)
      delimiters = [Regexp.escape(delimiter)]
      return input.split(Regexp.union(delimiters)).map(&:to_i).sum
    end
    string = input.gsub(/\s+/, ",")

    numbers = string.split(",").map(&:to_i)
    return numbers.sum
  end
end
