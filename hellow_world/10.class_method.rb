
module Greetings
    def self.say_hello
        puts "Hello!"
    end

    def self.say_good_morning
        puts "Good morning!"
    end
end
  
Greetings.say_hello         # Outputs: Hello!
Greetings.say_good_morning  # Outputs: Good morning!

=begin

Class Methods:

- Defined with self..
- Can be called directly on the module.
- Example: Greetings.say_hello.
=end

=begin
When to Use Each
- Instance Methods: Use when you want the methods to be available to instances of a class that includes the module.
- Class Methods: Use when you want the methods to be available directly on the module without needing to include it in a class or create an instance.
=end
