require 'pry'
class Customer
    attr_reader 
    attr_accessor :age, :name
    @@all = []
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def waiters
        self.meals.map do |wait_obj|
            wait_obj.waiter
        end
    end

    def meals
        Meal.all.select do |meal_obj|
            self == meal_obj.customer
        end
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end
    
    def self.all
        @@all
    end

end