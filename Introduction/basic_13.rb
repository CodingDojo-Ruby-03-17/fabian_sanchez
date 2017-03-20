=begin
============================
Assignment: Basic 13
============================

-------
Purpose
-------

Solve all 13 problems below in as much of Ruby way as possible.

Bonus: Try to use as few lines as possible for each question

 1) Print 1-255
 2) Print odd numbers between 1-255
 3) Print Sum: print the numbers from 0 to 255 but this time, it would also
    print the sum of the numbers that have been printed so far.
 4) Iterating through an array: print each value
 5) Find Max: Write a program (sets of instructions) that takes any array
    and prints the maximum value in the array.
 6) Get Average: Write a program that takes an array, and prints the AVERAGE
    of the values in the array.
 7) Array with Odd Numbers: Write a program that creates an array 'y'
    that contains all the odd numbers between 1 to 255
 8) Greater Than Y: Write a program that takes an array and returns the
    number of values in that array whose value is greater than a given value y.
 9) Square the values: create an algorithm (sets of instructions) that
    multiplies each value in the array by itself.
 10) Eliminate Negative Numbers: create an algorithm that replaces any
     negative number with the value of 0.
 11) Max, Min, and Average: create an algorithm that returns a hash with
     the maximum number in the array, the minimum value in the array, and the
     average of the values in the array.
 12) Shifting the Values in the Array: create an algorithm that shifts each
     number by one to the front.
 13) Number to String: Write a program that takes an array of numbers and
     replaces any negative number with the string 'Dojo'.

-------
Author: Fabian Sanchez
-------

-----
Date: 03/19/2017
-----
=end



# Program 1: Print 1-255
def basic_1
  x_range = (1..255)
  x_range.step(1) { |n| print "#{n}  " }
  puts
end

# Program 2: Print odd numbers between 1-255
def basic_2
  x_range = (1..255)
  x_range.step(1) { |n| print "#{n}  " if n % 2 != 0 }
  puts
end

# Program 3: Print Sum
def basic_3
  x_range = (1..255)
  sum = 0
  x_range.step(1) { |n| sum = sum + n; print "New number: #{n} Sum: #{sum}\n";  }
  puts
end

# Program 4: Iterating through an array
def basic_4 (array_iterate)
  array_iterate.each { |n| puts "Item: #{n}"}
  puts
end

# Program 5: Find Max
def basic_5 (array_iterate)
  array_iterate.max
end

# Program 6: Get Average
def basic_6 (array_iterate)
  sum = 0
  array_iterate.each { |n| sum = sum + n }
  return sum / array_iterate.length
end

# Program 7: Array with Odd Numbers
def basic_7
  new_array = []
  i = 1
  while i <= 255
    new_array.push(i)
    i += 2
  end
  return new_array
end

# Program 8: Greater Than Y
def basic_8 (array_iterate, eval_int)
  total = 0
  array_iterate.each { |n| total += 1 if n > eval_int}
  return total
end

# Program 9: Square the values
def basic_9 (array_iterate)
  square_array = array_iterate.collect { |n| n * n}
  return square_array
end

# Program 10: Eliminate Negative Numbers
def basic_10 (array_iterate)
  array_iterate.collect! { |n| n < 0 ? n = 0 : n }
  return array_iterate
end

# Program 11: Max, Min, and Average
def basic_11 (array_process)
  return { "max" => array_process.max, "min" => array_process.min, "average" => basic_6(array_process) }
end

# Program 12: Shifting the Values in the Array
def basic_12 (array_process)
  array_process.shift
  array_process.push(0)
end

# Program 13: Number to String
def basic_13 (array_iterate)
  array_iterate.collect! { |n| n < 0 ? n = 'Dojo' : n }
  return array_iterate
end

# Testing programs
puts "=================="
puts "Problem 1 Testing:"
puts "=================="
basic_1
puts
puts "=================="
puts "Problem 2 Testing:"
puts "=================="
basic_2
puts
puts "=================="
puts "Problem 3 Testing:"
puts "=================="
basic_3
puts
puts "=================="
puts "Problem 4 Testing:"
puts "=================="
string_array = ["Fabian", "Sanchez", "Coding", "Ninja"]
puts "Array to use: #{string_array}"
basic_4 (string_array)
puts
puts "=================="
puts "Problem 5 Testing:"
puts "=================="
int_array = [1,34,22,13,78,101,-300,24]
puts "Array to use: #{int_array}"
puts "Max number is: %d" % [basic_5(int_array)]
puts
puts "=================="
puts "Problem 6 Testing:"
puts "=================="
int_array = [2,10,3]
puts "Array to use: #{int_array}"
puts "Max number is: %d" % [basic_6(int_array)]
puts
puts "=================="
puts "Problem 7 Testing:"
puts "=================="
odds_array = basic_7
puts odds_array.to_s
puts
puts "=================="
puts "Problem 8 Testing:"
puts "=================="
int_array = [2,10,3]
eval_number = 1
puts "Array to use: #{int_array}"
puts "The total amount of numbers greater than %d: %d" % [eval_number, basic_8(int_array, eval_number)]
puts
puts "=================="
puts "Problem 9 Testing:"
puts "=================="
int_array = [1,2,3,4,5]
puts "Array to use: #{int_array}"
puts (basic_9 (int_array)).to_s
puts
puts "==================="
puts "Problem 10 Testing:"
puts "==================="
int_array = [-10,2,78,1000,-512,-22,782,1,-98]
puts "Array to use: #{int_array}"
puts (basic_10 (int_array)).to_s
puts
puts "==================="
puts "Problem 11 Testing:"
puts "==================="
int_array = [-10,2,78,1000,-512,-22,782,1,-98]
puts "Array to use: #{int_array}"
puts basic_11 (int_array)
puts
puts "==================="
puts "Problem 12 Testing:"
puts "==================="
int_array = [-10,2,78,1000,-512,-22,782,1,-98]
puts "Array to use: #{int_array}"
puts (basic_12 (int_array)).to_s
puts
puts "==================="
puts "Problem 13 Testing:"
puts "==================="
int_array = [-10,2,78,1000,-512,-22,782,1,-98]
puts "Array to use: #{int_array}"
puts (basic_13 (int_array)).to_s
puts
