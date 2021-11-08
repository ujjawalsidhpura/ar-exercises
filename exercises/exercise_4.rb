require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Surrey = Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Whistler = Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_store = Store.where(mens_apparel: true)

puts "---mens store----"
for each_store in @mens_store do
  puts each_store.name
end



@womens_store_less_than_million = Store.where(womens_apparel: true ,
  annual_revenue: 1000000..Float::INFINITY )

puts "---womens store making more than a million---"

for each_women_store in @womens_store_less_than_million do
  puts each_women_store.name
end