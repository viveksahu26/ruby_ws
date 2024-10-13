# Define a module with instance methods
module Greeter
    def say_hello
      puts "Hello!"
    end
  
    def say_good_morning
      puts "Good morning!"
    end
  end
  
  # Define a class that includes the module
  class Person
    include Greeter
  end
  
  # Create an instance of the class and call the methods
  person = Person.new
  person.say_hello        # Outputs: Hello!
  person.say_good_morning # Outputs: Good morning!
