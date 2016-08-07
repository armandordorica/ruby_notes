class User
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
end

user = User.new("Armando", "armandordorica@gmail.com")
puts "My user's name is #{user.name} and the associated email is #{user.email}"







user.name = "John"
user.email = "john@example.com"
puts "My user's new name is #{user.name} and the associated email is #{user.email}"
