=begin
============================
Assignment: Arrays
============================

-------
Purpose
-------

try the following methods:

  >> .include?(value) => true or false
  >> .last => returns the last object in range
  >> .max => returns the maximum value in range
  >> .min => returns the minimum value in range

-------
Author: Fabian Sanchez
-------

-----
Date: 03/16/2017
-----
=end

# Range to use
a = (1..20)

puts
puts "The range that is going to be used is:\n"
puts "a = " + a.to_s
puts

puts "================"
puts "Using .include?:"
puts "================"
puts "Range is: " + a.to_s
puts "Code is a.include?(4): " + a.include?(4).to_s
puts "Code is a.include?(30): " + a.include?(30).to_s
puts

puts "============"
puts "Using .last:"
puts "============"
puts "Range is: " + a.to_s
puts "Code is a.last: " + a.last.to_s
puts "Code is a.last: " + a.last.to_s
puts

puts "================"
puts "Using .max:"
puts "================"
puts "Range is: " + a.to_s
puts "Code is a.max: " + a.max.to_s
puts

puts "================"
puts "Using .min:"
puts "================"
puts "Range is: " + a.to_s
puts "Code is a.min: " + a.min.to_s
puts
