require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(
  first_name:'abc',
  last_name:'cef',
  hourly_rate: 50
)

@store1.employees.create(
  first_name:'ghi',
  last_name:'jkl',
  hourly_rate: 40
)

@store1.employees.create(
  first_name:'mno',
  last_name:'pqr',
  hourly_rate: 55
)

@store2.employees.create(
  first_name:'stu',
  last_name:'vwz',
  hourly_rate: 85
)

@store2.employees.create(
  first_name:'xyz',
  last_name:'abc',
  hourly_rate: 25
)

@store2.employees.create(
  first_name:'ddyz',
  last_name:'abdfdc',
  hourly_rate: 40
)

@store2.employees.create(
  first_name:'asyz',
  last_name:'sadf',
  hourly_rate: 50
)


