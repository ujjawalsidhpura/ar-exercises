require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Burnaby = Store.new
# Richmond = Store.new
# Gastown = Store.new

Burnaby = Store.create(
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

Richmond = Store.create(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

Gastown = Store.create(
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

puts Store.count