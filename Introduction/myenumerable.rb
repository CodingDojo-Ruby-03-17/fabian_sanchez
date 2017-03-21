=begin
============================
Assignment: MyEnumerable
============================

-------
Purpose
-------

Custom simple version of the Enumerable module.

-------
Author: Fabian Sanchez
-------

-----
Date: 03/21/2017
-----
=end

module MyEnumerable
  # Custom version of each
  def my_each
    # Was a block provided?
    if block_given?
      # Yes... Let's iterate and pass the value of each element to the block as
      # an argument
      for i in (0...self.length)
        yield (self[i])
      end # end for

    else
      # No... Let's just iterate through the collection and print each element
      for i in (0...self.length)
        puts self[i]
      end # end for
    end # end if..else
  end # end method
end # end module

# Adding the custom module to the Array class
class Array
   include MyEnumerable
end

puts "Using the following array: "
a = [1,2,3,4]
puts a.to_s
puts "Code being used: a.my_each { |i| print \"%d \" % [i] }"
print "Output: "
a.my_each { |i| print "%d " % [i] } # => 1 2 3 4
puts
puts "Code being used: a.my_each { |i| print \"%d \" % [i * 10] }"
print "Output: "
a.my_each { |i| print "%d " % [i * 10] } # => 10 20 30 40
puts
