require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.first
@store2 = Store.second

@store1.name = 'The best store'
# store2.name = 'dang'
@store1.save
# print store1
# Your code goes here ...
