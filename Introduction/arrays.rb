=begin
============================
Assignment: Arrays
============================

-------
Purpose
-------

Try the following methods at least once.

 >> .at | .fetch
 >> .delete
 >> .reverse
 >> .length
 >> .sort
 >> .slice
 >> .shuffle
 >> .join
 >> .insert
 >> .values_at() -> returns an array with values specified in the param

-------
Author: Fabian Sanchez
-------

-----
Date: 03/16/2017
-----
=end

# Arrays to use
a = [23, 46, 11, 98, 5, -32]
b = ["Fabian", "Sanchez", "Molina", "Coding", "Ninja"]
c = [ "a", "b", "b", "b", "c" ]
d = [ "A", "B", "C", "D", "E" ]

puts
puts "The arrays that are going to be used are:\n"
puts "a = " + a.to_s
puts "b = " + b.to_s
puts "c = " + c.to_s
puts "d = " + d.to_s
puts

puts "=========="
puts "Using .at:"
puts "=========="
puts "List is: " + a.to_s
puts "Code is a.at(4): " + a.at(4).to_s
puts "Code is a.at(100): " + a.at(100).to_s
puts

puts "============="
puts "Using .fetch:"
puts "============="
puts "List is: " + b.to_s
puts "Code is b.fetch(4): " + b.fetch(4).to_s
puts "Code is b.fetch(100, \"default\"): " + b.fetch(100, "default").to_s
print "Code is b.fetch(100) {puts \"\#\{i\} is out of bounds\"}: "
puts b.fetch(100) { |i| puts "Index is out of bounds"}
puts

puts "=============="
puts "Using .delete:"
puts "=============="
puts "List is: " + c.to_s
puts "Code is c.delete(\"b\"): " + c.delete("b")
print "Code is c.delete(\"b\"): "
puts c.delete("b")
puts "Code is c.delete(\"b\") { \"Not more \"b\" objects in the list.\" }: " + c.delete("b") { "Not more \"b\" objects in the list." }
puts "New list is: " + c.to_s
puts

puts "==============="
puts "Using .reverse:"
puts "==============="
puts "List is: " + b.to_s
puts "Code is b.reverse: " + b.reverse.to_s
puts "List still is: " + b.to_s
puts

puts "=============="
puts "Using .lenght:"
puts "=============="
puts "List is: " + a.to_s
puts "Code is b.length: " + b.length.to_s
puts

puts "============"
puts "Using .sort:"
puts "============"
puts "List is: " + b.to_s
puts "Code is b.sort: " + b.sort.to_s
puts "List still is: " + b.to_s
puts

puts "============="
puts "Using .slice:"
puts "============="
puts "List is: " + a.to_s
puts "Code is a.slice(2): " + a.slice(2).to_s
puts "Code is a.slice(0, 3): " + a.slice(0, 3).to_s
puts "Code is a.slice(0..2): " + a.slice(0..2).to_s
puts "List still is: " + a.to_s
puts

puts "==============="
puts "Using .shuffle:"
puts "==============="
puts "List is: " + d.to_s
puts "Code is d.shuffle: " + d.shuffle.to_s
puts "Code is d.shuffle: " + d.shuffle.to_s
puts "Code is d.shuffle: " + d.shuffle.to_s
puts "List still is: " + d.to_s
puts

puts "============"
puts "Using .join:"
puts "============"
puts "List is: " + b.to_s
puts "Code is b.join: " + b.join
puts "Code is b.join(\"-\"): " + b.join("-")
puts "Code is b.join(\" <> \"): " + b.join(" <> ")
puts

puts "=============="
puts "Using .insert:"
puts "=============="
puts "List is: " + b.to_s
puts "Code is b.insert( 2, \"New element\" ): " + b.insert( 2, "New element" ).to_s
puts "Code is b.insert( -6, \"New element 2\" ): " + b.insert( -6, "New element 2" ).to_s
puts "New list is: " + b.to_s
puts

puts "================="
puts "Using .values_at:"
puts "================="
puts "List is: " + d.to_s
puts "Code is d.values_at(0,2,4): " + d.values_at(0,2,4).to_s
puts "Code is d.values_at(2..4): " + d.values_at(2..4).to_s
puts "Code is d.values_at(2..4): " + d.values_at(-1, -3, -3, -3, -5).to_s
puts
