=begin
============================
Assignment: Names
============================

-------
Purpose
-------

Consider the following code

  a = {first_name: "Michael", last_name: "Choi"}
  b = {first_name: "John", last_name: "Doe"}
  c = {first_name: "Jane", last_name: "Doe"}
  d = {first_name: "James", last_name: "Smith"}
  e = {first_name: "Jennifer", last_name: "Smith"}
  names = [a, b, c, d, e]

> Create a ruby method that goes over each name in the names array and prints
something like below:

  You have 5 names in the 'names' array
  The name is 'Michael Choi'
  The name is 'John Doe'
  The name is 'Jane Doe'
  The name is 'James Smith'
  The name is 'Jennifer Smith'

-------
Author: Fabian Sanchez
-------

-----
Date: 03/20/2017
-----
=end

# Funciton to get the requested output
def names_assignment (names_array)
  puts "You have %d names in the 'names' array" % [names_array.length]
  names_array.each { |n| puts "The name is \'%s %s\'" % [n[:first_name], n[:last_name]]}
end

# Array and Hashes to be used as per the assignment
a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

# Running the funciton using the names array as argument
names_assignment (names)
