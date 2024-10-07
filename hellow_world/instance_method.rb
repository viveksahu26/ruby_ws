
require_relative 'greetings_module'

class Person
    include Greetings
end

person = Person.new
person.say_hello      # Outputs: Hello!
person.say_goodbye    # Outputs: Goodbye!

=begin
Instance Methods:

- Defined without self..
- Need to be included in a class and called on an instance of that class.
- Example: person.say_hello.
= end

=begin
When to Use Each
Instance Methods: Use when you want the methods to be available to instances of a class that includes the module.
Class Methods: Use when you want the methods to be available directly on the module without needing to include it in a class or create an instance.
=end
