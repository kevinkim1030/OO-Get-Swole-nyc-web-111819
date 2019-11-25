# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("alanna", 2000)
l2 = Lifter.new("barry", 1)
l3 = Lifter.new("cody", 3000)

g1 = Gym.new("atlas")
g2 = Gym.new("badguys")
g3 = Gym.new("copycat")

m1 = Membership.new("alanna", "atlas", 5000)
m2 = Membership.new("barry", "badguys", 400)
m3 = Membership.new("cody", "copycat", 3000000)
m4 = Membership.new("alanna", "copycat", 3000)




binding.pry

puts "Gains!"
