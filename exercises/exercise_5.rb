require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue =  Store.sum(:annual_revenue)
@total_stores = Store.count(:name)

puts "Total revenue of all stores across canada is $#{@total_revenue}"

puts "Average annual income of all stores is #{@total_revenue/@total_stores}"

@store_over_million = Store.where(annual_revenue: 1000000..Float::INFINITY).count

puts @store_over_million