require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


# Exercise 5: Calculations
# https://api.rubyonrails.org/classes/ActiveRecord/Calculations.html
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
puts "Total sum of annual revenue #{Store.sum(:annual_revenue)}"
# On the next line, also output the average annual revenue for all stores.
puts "Average of annual revenue #{Store.average(:annual_revenue)}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
@num_of_rich_stores = Store.where("annual_revenue > 1000000").count()
puts "Number of stores making more than $10000000 : #{@num_of_rich_stores}"