require_relative "../config/environment"
puts "Enter a name "
name = gets.chomp
customerInstance = Customer.new(name)
rest = Restaurant.new("Chipotle")

 review = Review.new("something",5,customerInstance,rest)

#  review.add_customer(customerInstance)
#review.customer = customerInstance

# review.customer.name
