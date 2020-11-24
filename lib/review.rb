require "pry"
class Review
    @@all = []
    #a Singular review OBJ BELONGS to a Singular Customer OBJ/Instace
    attr_accessor  :customer,:review,:rating, :rest

    def initialize(review,rating,customer,rest)
      @review = review 
      @rating = rating 
      @customer = customer
      @rest = rest
      @@all << self
    end 

    def self.all
        @@all  
    end 

    # def add_customer(customerInstance)
    #     binding.pry
    #     self.customer = customerInstance
    # end 
end 