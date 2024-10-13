# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

# add to hash
person[:fashion] = 'indian'

puts "person: #{person}"
puts ""
person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# delete from hash
person.delete(:hair)
puts ""
puts "After deleting hair key from person hash"
person.each do |key, value|
    puts "Bob's #{key} is #{value}"
end

puts ""
puts "Return a array verson of person hash"
puts "Array verson of hash: #{person.to_a}"
