

require_relative 'greetings_module'

class Person

  # Include the Module in a Class: 
  # The Person class includes the Greetings module using the include keyword.  
  include Greetings

  def initialize(name)
    @name = name
  end

  def greet

    # The Person class can now use the say_hello and say_goodbye methods as if they were defined in the class itself
    say_hello
    puts "My name is #{@name}."
    say_goodbye

  end
end

# Create an instance of Person and call the greet method
person = Person.new("Alice")
person.greet

# NOTE:
#  `include`: keyword, you can mix in methods from modules into your classes.
