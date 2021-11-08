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

Test_Store = Store.create(
  name: 'Surrey'
)

puts Test_Store.valid?

puts Test_Store.errors.full_messages