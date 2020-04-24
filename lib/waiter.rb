class Waiter

    attr_accessor :name, :years

    @@all = []
    def initialize(name, years)
        @name = name
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total ,tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select { |meal| meal.waiter == self }
    end

    def best_tipper
        ele = meals.max {|a, b| a.tip <=> b.tip}
        ele.customer
    end

    # array.max_by do |element|
    #     element.field
    #   end

    # my_array.max {|a,b| a.attr <=> b.attr }

    # def meals
    #     Meal.all.select { |meal| meal.customer == self }
    # end

    # def waiters
    #     meals.map { |meal| meal.waiter }
    # end



end

# initializes current Waiter instance, 
# Customer total and tip