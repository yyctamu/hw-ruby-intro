# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

#######################################

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length >= 2
    arr_1 = arr.sort[-2..-1]
    return arr_1.sum
    if arr_1[0] == arr_1[1]
      return arr_1[0]
    end

  elsif arr.length == 1
    return arr[0]

  else
    return arr.sum
  end

end
#####################################

def sum_to_n? arr, n
  # YOUR CODE HERE
  return true if arr.permutation(2).any? {|x, y| x + y == n }

  false
end

#######################################

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, %s" %name

end

######################################
def starts_with_consonant? s
  # YOUR CODE HERE
  return true if /^[^AEIOU\W]/i.match(s) != nil

  false
end

#####################################

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if (/[^ 01]/ === s)
  return false if (s == '')
  return true if (s.to_i(2)% 4 == 0)


false
end
#####################################
# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :price, :isbn

  def initialize(isbn, price)
		raise ArgumentError,
      "Price Error" if price <= 0
    raise ArgumentError,
      "ISBN Error" if isbn.empty?

		@price = price
    @isbn = isbn

	end

	def price_as_string
		sprintf("$%.2f", @price)
	end

end
