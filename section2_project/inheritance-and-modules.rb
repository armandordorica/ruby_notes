module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
end

class User
  include Destructable
  attr_accessor :name, :email

  #this method is called every time you create a new object
  def initialize(name, email)
    @name = name
    @email = email
    # @name is an instance variable which exists as long as the object exists
  end

  def run 
    puts "Hey I'm running"
  end

  # def get_name
  #   @name
  # end

  # def set_name=(name)
  #   @name = name
  # end


def self.identify_yourself
  puts "hey i am a class method"
  
end

end

class Buyer < User
  def run
    puts "Hey I'm not running and I'm in buyer class"
  end
end

class Seller < User
end

class Admin < User
end

user = User.new("Armando", "armandordorica@gmail.com")
puts "My user's name is #{user.name} and the associated email is #{user.email}"







user.name = "John"
user.email = "john@example.com"
puts "My user's new name is #{user.name} and the associated email is #{user.email}"


buyer1 = Buyer.new("John Doe", "johndoe@example.com")
buyer1.run

seller1 = Seller.new("John Doe1", "johndoe1@example.com")
seller1.run

admin1 = Admin.new("John Doe2", "johndoe2@example.com")
admin1.run

puts Buyer.ancestors

User.identify_yourself
