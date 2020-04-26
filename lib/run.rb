require_relative("./customer.rb") #loads file in argument into current file
require_relative("./waiter")
require_relative("./meal")


require 'pry'
tisdale = Customer.new("Tisdale", 31)
daniel = Customer.new("Daniel", 30)
terrance = Waiter.new("Terrance", 1)
joe = Waiter.new("Joe", 10)
Meal.new(terrance, tisdale, 18, 4)

#binding.pry
