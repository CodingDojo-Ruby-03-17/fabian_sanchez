################################################################################

=begin
============================
Assignment: Ruby Puzzles
============================

-------
Purpose
-------

Work on the puzzles below. Make your code is as clean as possible.

-------
Author: Fabian Sanchez
-------

-----
Date: 03/19/2017
-----
=end

################################################################################

=begin
1) Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the
sum of all numbers in the array. Also have the function return an array that
only include numbers that are greater than 10 (e.g. when you pass the array
above, it should return an array with the values of 13,25,32 - hint: use reject
or find_all method)
=end

def puzzle_1 (array_process)
  sum = 0
  greater_array = []
  array_process.each { |n| sum = sum + n; greater_array.push n if n > 10 }
  puts "The sum of all items on the array is: %d" % [sum]
  return greater_array
end

puts "=================="
puts "Puzzle 1 solution:"
puts "=================="
int_array = [3,5,1,2,7,9,8,13,25,32]
puts "Array to use: #{int_array}"
puts "The numbers greater than 10 are: " + (puzzle_1 (int_array)).to_s
puts

=begin
2) Create an array with the following values: John, KB, Oliver, Cory, Matthew,
Christopher. Shuffle the array and print the name of each person. Have the
program also return an array with names that are longer than 5 characters.
=end

def puzzle_2 (array_process)
  long_name_array = []
  array_process.shuffle.each { |n| puts "The name of the person is: #{n}"; long_name_array.push(n) if n.length > 5 }
  return long_name_array
end

puts "=================="
puts "Puzzle 2 solution:"
puts "=================="
string_array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts "Array to use: #{string_array}"
puts "The names longer than 5 chars are: " + (puzzle_2 (string_array)).to_s
puts

=begin
3) Create an array that contains all 26 letters in the alphabet (this array
must have 26 values). Shuffle the array and display the last letter of the
array. Have it also display the first letter of the array. If the first letter
in the array is a vowel, have it display a message.
=end

def puzzle_3 (alphabet_array)
  shuffle_array = alphabet_array.shuffle
  puts "The last letter of the array is: " + shuffle_array[-1]
  puts "The last letter of the array is: " + ( shuffle_array[0].match('[aeoiu]') {true} ? "%s and it's a vowel" % [shuffle_array[0]] : shuffle_array[0] )
end

puts "=================="
puts "Puzzle 3 solution:"
puts "=================="
alphabet_array = ("a".."z").to_a
puts "Array to use: #{alphabet_array}"
puts (puzzle_3 (alphabet_array)).to_s
puts

=begin
4) Generate an array with 10 random numbers between 55-100.
=end

def puzzle_4
  random_int_array = []
  0.upto(9) { random_int_array.push(rand(55..100)) }
  return random_int_array
end

puts "=================="
puts "Puzzle 4 solution:"
puts "=================="
puts "New array is: %s" % [puzzle_4.to_s]
puts

=begin
5) Generate an array with 10 random numbers between 55-100 and have it be
sorted (showing the smallest number in the beginning). Display all the numbers
in the array. Next, display the minimum value in the array as well as the
maximum value.
=end

def puzzle_5
  random_int_array = []
  0.upto(9) { random_int_array.push(rand(55..100)) }
  puts "The new array is: %s" % [random_int_array.to_s]
  puts "The sorted array is: %s" % [(random_int_array.sort!).to_s]
  puts "The minimum value is: %s" % [(random_int_array.min).to_s]
  puts "The maximum value is: %s" % [(random_int_array.max).to_s]
end

puts "=================="
puts "Puzzle 5 solution:"
puts "=================="
puzzle_5
puts

=begin
6) Create a random string that is 5 characters long (hint: (65+rand(26)).chr
returns a random character)
=end

def puzzle_6
  random_string = ""
  1.upto(5) { random_string << (97+rand(26)).chr }
  return random_string
end

puts "=================="
puts "Puzzle 6 solution:"
puts "=================="
puts "The random string is: %s" % [puzzle_6]
puts

=begin
7) Generate an array with 10 random strings that are each 5 characters long
=end

def puzzle_7
  array_random_strings = []
  i= 1
  for i in 1..10
    random_string = ""
    1.upto(5) { random_string << (97+rand(26)).chr }
    array_random_strings.push(random_string)
  end
  return array_random_strings
end

puts "=================="
puts "Puzzle 7 solution:"
puts "=================="
puts "The random string is: %s" % [(puzzle_7).to_s]
puts
