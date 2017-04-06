require_relative 'human'
require_relative 'wizard'
require_relative 'ninja'
require_relative 'samurai'

puts "============================================="
puts "Testing the classes created and their methods"
puts "============================================="
puts
puts "Creating punny human."
human1 = Human.new
puts "Human health is: %d" % [human1.health]
puts "Human stealth is: %d" % [human1.stealth]
puts "Human intelligence is: %d" % [human1.intelligence]
puts "Human strength is: %d" % [human1.strength]
puts
puts "Creating mystic Wizard."
wizard1 = Wizard.new
puts "Wizard health is: %d" % [wizard1.health]
puts "Wizard stealth is: %d" % [wizard1.stealth]
puts "Wizard intelligence is: %d" % [wizard1.intelligence]
puts "Wizard strength is: %d" % [wizard1.strength]
puts
puts "Creating skillfull Ninja."
ninja1 = Ninja.new
puts "Ninja health is: %d" % [ninja1.health]
puts "Ninja stealth is: %d" % [ninja1.stealth]
puts "Ninja intelligence is: %d" % [ninja1.intelligence]
puts "Ninja strength is: %d" % [ninja1.strength]
puts
puts "Creating a mighty Samurai."
samurai1 = Samurai.new
puts "Ninja health is: %d" % [samurai1.health]
puts "Ninja stealth is: %d" % [samurai1.stealth]
puts "Ninja intelligence is: %d" % [samurai1.intelligence]
puts "Ninja strength is: %d" % [samurai1.strength]
puts
puts
puts "Combat now begins"
puts
puts "- The evil Wizard launches a fireball to the punny Human"
wizard1.fireball(human1)
puts "- The skillfull Ninja steals the punny Human... Two against 1 that's just too much"
ninja1.steal(human1)
puts "- The mighty samurai shows in the scene, and protects the Human... The Ninja seeing how powerful he was decides to flee..."
ninja1.get_away
puts "- The evil Wizard launches a fireball to the mighty Wizard... Nevertheless, it's just a scratch for such a powerful warrior"
wizard1.fireball(samurai1)
puts "- The Samurai warns the Wizard tha the Human is under is clan protection and 2 more Samurais join the combat..."
samurai2 = Samurai.new
samurai3 = Samurai.new
puts "- Now what will you decide to do Wizard.. They ask as if they were train to thinkg like one... It's %d of us now..." % [samurai1.how_many]
puts "- The evil Wizard attack with fireballs until exhaustion..."
wizard1.fireball(samurai1).fireball(samurai1).fireball(samurai2).fireball(samurai2).fireball(samurai3).fireball(samurai3).fireball(samurai1)
puts "- I will take care of this... Claims the youngest..."
samurai3.death_blow(wizard1)
puts "- The evil wizard proclaiming the heal spell with his last breath, manages to escape death's claws... And runs away, cursing the Samurais..."
wizard1.heal
puts "- The human thanks the warriors, and sees the oldest meditating... And is astonished by such spirit, as the wounds heal..."
samurai1.meditate
puts
puts
puts
puts "The current stats for all characters are:"
puts
puts "Human."
puts "Human health is: %d" % [human1.health]
puts "Human stealth is: %d" % [human1.stealth]
puts "Human intelligence is: %d" % [human1.intelligence]
puts "Human strength is: %d" % [human1.strength]
puts
puts "Wizard."
puts "Wizard health is: %d" % [wizard1.health]
puts "Wizard stealth is: %d" % [wizard1.stealth]
puts "Wizard intelligence is: %d" % [wizard1.intelligence]
puts "Wizard strength is: %d" % [wizard1.strength]
puts
puts "Ninja."
puts "Ninja health is: %d" % [ninja1.health]
puts "Ninja stealth is: %d" % [ninja1.stealth]
puts "Ninja intelligence is: %d" % [ninja1.intelligence]
puts "Ninja strength is: %d" % [ninja1.strength]
puts
puts "Samurai 1 - Oldest."
puts "Ninja health is: %d" % [samurai1.health]
puts "Ninja stealth is: %d" % [samurai1.stealth]
puts "Ninja intelligence is: %d" % [samurai1.intelligence]
puts "Ninja strength is: %d" % [samurai1.strength]
puts "Samurai 1 - Oldest."
puts
puts "Samurai 2."
puts "Ninja health is: %d" % [samurai2.health]
puts "Ninja stealth is: %d" % [samurai2.stealth]
puts "Ninja intelligence is: %d" % [samurai2.intelligence]
puts "Ninja strength is: %d" % [samurai2.strength]
puts
puts "Samurai 3 - Yougest."
puts "Ninja health is: %d" % [samurai3.health]
puts "Ninja stealth is: %d" % [samurai3.stealth]
puts "Ninja intelligence is: %d" % [samurai3.intelligence]
puts "Ninja strength is: %d" % [samurai3.strength]
puts
