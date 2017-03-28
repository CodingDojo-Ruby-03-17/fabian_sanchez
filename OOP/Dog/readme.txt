=========================
Assignment- Dog
=========================

Objective: Create a file mammal.rb. In this file, create a Mammal Class. A
mammal should have a default health attribute with value of 150. Also add a
method called display_health, which when invoked, prints the health of
the Mammal.

In a separate file (dog.rb) create a class called Dog that inherits from the
Mammal class and do the following:

  > Default health of 150 (inherited)
  > A method called pet, which when invoked,  increases the health by 5
  > A method called walk, which when invoked, decreases the health by 1
  > A method called run, which when invoked, decreases the health by 10
  > A method called display_health (inherited)

Have an instance of the Dog class walk 3 times, run twice, pet once and then
display its health

=========================
Author: Fabian Sanchez
=========================
Creation date: 03/27/2017
=========================



-----------------------------------------------------------------------------

=========================
Assignment- Lion
=========================

Objective: Now, create another class called Lion that inherits from Mammal.

  > Have the default health be 170
  > Add a new method called fly, which when invoked, decreases the health by 10.
  > Add a new method called attack_town, which when invoked, decreases the
    health by 50.
  > Add a new method called eat_humans, which when invoked, increases the
    health by 20.

Test: Have the Lion attack_town three times, eat_humans twice, fly twice, and
have it display its health. When the Lion's display_health method is called
have it say 'This is a lion` before it displays the default information (make
sure you still call the parent's display_health function).

=========================
Author: Fabian Sanchez
=========================
Creation date: 03/27/2017
=========================
