require 'pry'
class Meal
    attr_accessor :total, :tip, :waiter, :customer
    @@all = []
    def initialize(waiter, customer, total, tip=0)
        @total = total
        @waiter = waiter
        @customer = customer
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end