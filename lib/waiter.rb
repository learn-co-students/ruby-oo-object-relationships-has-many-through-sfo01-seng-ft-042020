require 'pry'
class Waiter
    attr_accessor :name, :yrs_experience
    @@all = []
    def initialize(name, yrs_experience)
     
      @name = name
      @yrs_experience = yrs_experience
      @@all << self
    end
   
    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            binding.pry
          meal_a.tip <=> meal_b.tip
        end
        best_tipped_meal.customer
      end
    #find the largest tip from an array of tips in Meal,
    #finds the customer it's associated with, and returns 
    #that customer

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            self == meal.waiter
        end
    end

    def self.all
      @@all
    end
   
end