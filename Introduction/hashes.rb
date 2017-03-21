=begin
============================
Assignment: Hashes
============================

-------
Purpose
-------

Try the following methods:

  >> .delete(key) => deletes and returns a value associated with the key
  >> .empty? => returns true if hash contains no key-value pairs
  >> .has_key?(key) => true or false
  >> .has_value?(value) => true or false

-------
Author: Fabian Sanchez
-------

-----
Date: 03/20/2017
-----
=end

# Hash to be used
a = {}

puts
puts "The hash that is going to be used is:\n"
puts "a = " + a.to_s
puts

puts "=============="
puts "Using .empty?:"
puts "=============="
puts "Hash is: " + a.to_s
puts "Code is a.empty?: " + a.empty?.to_s
puts
puts "Updating hash with values\n\n"
a = {first_name: "Fabian", last_name: "Sanchez", age: 23, height_cms: 170}
puts "Now hash is: " + a.to_s
puts "Code is a.empty?: " + a.empty?.to_s
puts
puts "==================="
puts "Using .delete(key):"
puts "==================="
puts "Hash is: " + a.to_s
puts "Code is a.delete(:height_cms): " + (a.delete(:height_cms)).to_s
puts "Now hash is: " + a.to_s
puts
puts "====================="
puts "Using .has_key?(key):"
puts "====================="
puts "Hash is: " + a.to_s
puts "Code is a.has_key?(:first_name): " + a.has_key?(:first_name).to_s
puts "Code is a.has_key?(:middle_name): " + a.has_key?(:middle_name).to_s
puts
puts "====================="
puts "Using .has_value?(value):"
puts "====================="
puts "Hash is: " + a.to_s
puts "Code is a.has_value?(23): " + a.has_value?(23).to_s
puts "Code is a.has_value?(30): " + a.has_value?(30).to_s
puts
