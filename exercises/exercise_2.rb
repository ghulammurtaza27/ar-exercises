require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

puts @store1 = Store.find_by(id: 1)
puts @store2 = Store.find_by(id: 2)
@store1.update(name: "Lahore")

puts @store1 = Store.find_by(id: 1)
