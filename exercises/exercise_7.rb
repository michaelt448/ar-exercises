require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts 'Please put a store name and income'
input = gets.chomp.split(' ')
# @newStore = Store.create(store_name)
mystore = Store.create(name: input.first,annual_revenue: input.second,mens_apparel: true,womens_apparel: true);