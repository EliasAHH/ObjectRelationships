class Restaurant
    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    # will return an ARRAY of ALL REVIEWS instances that THIS customer has made
    def reviews
        Review.all.select {|r| r.rest == self}
      
    end 

    # Will return an array of all customers that has associations with this Restaurant
    def customers
        reviews.map {|r| r.customer}
    end 
end