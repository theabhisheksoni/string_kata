class StringCalculator
  def add(input)
    return 0 if input.empty?
    delimiters = fetch_delimiters(input)
    nums = fetch_numbers(input, delimiters)
    negatives = fetch_negatives(nums)
    raise "Negatives not allowed: #{negatives.join(',')}" if negatives.any?
    return nums.sum
  end

  private

  def fetch_delimiters input
    return "," unless input.start_with?("//")
    delimiter, input = input[2..].split("\n", 2)
    [Regexp.escape(delimiter)]
  end

  def fetch_numbers input, delimiters
    input.split(/#{Regexp.union(delimiters)}|\n/).map(&:to_i)
  end

  def fetch_negatives nums
    nums.select { |n| n < 0 }
  end
end
