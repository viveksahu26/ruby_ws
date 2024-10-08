# Basic if-else Statement

# Example1: Check if a number is positive or negative

number = -10

if number > 0
  puts "The number is positive."
else
  puts "The number is negative or zero."
end

# Example2: Check if a number is positive, negative, or zero

number = 0

if number > 0
  puts "The number is positive."
elsif number < 0
  puts "The number is negative."
else
  puts "The number is zero."
end


# Example3: Check if a number is positive, negative, or zero, and if it's even or odd
number = 6

if number > 0
    puts "The number is positive"
    if number % 2 == 0
        puts "The number is even."
    else
        puts "The number is odd."
    end
elsif number < 0
    puts "The number is negative"
    if number % 2 == 0
        puts "The number is even."
    else
        puts "The number is odd."
    end
else
    puts "The number is zero"
end

