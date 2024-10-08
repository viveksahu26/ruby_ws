
require_relative 'greetings_module'
require_relative 'farewell_module'

class Person
  include Greetings
  include Farewell

  def initialize(name)
    @name = name
  end

  def greet
    say_hello
    puts "My name is #{@name}."
    say_goodbye
    say_goodnight
  end
end

# Create an instance of Person and call the greet method
person = Person.new("Alice")
person.greet
