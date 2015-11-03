# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  answer = 0
  for i in 0...arr.size do
    answer += arr[i]
  end
  answer
end

def max_2_sum arr
  # YOUR CODE HERE
  sorted_arr = arr.sort
  num_elements = arr.size
  if num_elements == 0
    return 0
  elsif num_elements == 1
    return sorted_arr[0]
  else
    return sorted_arr[num_elements-1]+sorted_arr[num_elements-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size == 0
    return false
  end
  
  sorted_arr = arr.sort
  left_ptr = 0
  right_ptr = arr.size - 1
  while left_ptr<right_ptr do
    if (sorted_arr[left_ptr]+sorted_arr[right_ptr]) == n 
      return true
    elsif (sorted_arr[left_ptr]+sorted_arr[right_ptr]) > n
      right_ptr -= 1
    else
      left_ptr += 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end


def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 || s=="0"
  end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn,:price
  
 
  def initialize isbn,price
    if price<=0 || isbn.size == 0
      raise ArgumentError
    end
    @isbn = isbn 
    @price = price
  end
  
  def price_as_string
    formatted_price = '%.2f' %@price
    "$"+formatted_price
  end
  
end