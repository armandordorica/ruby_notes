require 'pp'
require_relative 'user'

user = User.new 'joe@example.com', 'Joe'

pp user #outputs the object "pretty print"
user.save #this calls the save method created on the user.rb file