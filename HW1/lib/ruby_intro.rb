# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans = 0
  for a in arr
    ans +=a
  end
  return ans
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  sec_max = -100000
  max = -100000
  for a in arr
    if a>max
      sec_max = max
      max = a
    elsif a > sec_max
    sec_max = a
    end
  end
  max = max+sec_max
  return max

end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  arr = arr.sort
  i = 0
  j = arr.length-1
  while i<j
    if arr[i]+arr[j] == n
      return true
    elsif arr[i]+arr[j]<n
      i+=1
    else
      j-=1
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i.match(s) != nil
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  /^[10]*00$/.match(s) != nil

end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    return @isbn
  end

  def price
    return @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$%0.2f"%@price
  end
end
