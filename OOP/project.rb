=begin
============================
Assignment: Project
============================

-------
Purpose
-------

Create a Project Class that has the following attributes: name, description.
Also, create a instance method called elevator_pitch that will print out the
name of the project and its description separated by a comma.

Example:

  project1 = Project.new("Project 1", "Description 1")
  puts project1.name # => "Project 1"
  project1.elevator_pitch  # => "Project 1, Description 1"

-------
Author: Fabian Sanchez
-------

-----
Date: 03/27/2017
-----
=end

class Project
  #Class attributes
  attr_accessor :name
  attr_accessor :description

  #Instance methods

  # Initializer
  def initialize(name = "No name", description = "No description")
    @name = name
    @description = description
  end

  # Method requested for printing the Name, and description of the project
  def elevator_pitch
    puts "%s, %s" % [@name, @description]
  end
end

puts
puts "Testing new object from Project class passing correct attributes"
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
puts
puts "Testing new object from Project class passing no attributes"
project2 = Project.new()
puts project2.description # => "Project 1"
project2.elevator_pitch  # => "Project 1, Description 1"
puts
