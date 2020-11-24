require "pry"
class Customer
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all  
    end 

    def reviews
        Review.all.select {|r| r.customer == self}
        # will return an ARRAY of ALL REVIEWS that THIS customer has made
    end 

    def rest 
        reviews.map {|r| r.rest}
    end 
    
    #A singular customer Instance can have MANY Reviews
end

