# Has-Many-Through relationship : Through Meal
# Meal class is a 'joining' model between Waiter and Customer classes
# Remaining a Single Source of Truth by Meal class knows all the details of each meal instance
# including customer and waiter of each meal.

class Meal
 
    attr_accessor :waiter, :customer, :total, :tip
   
    @@all = []
   
    def initialize(waiter, customer, total, tip=0)
      @waiter = waiter
      @customer = customer
      @total = total
      @tip = tip
      @@all << self
    end
   
    def self.all
      @@all
    end
  end