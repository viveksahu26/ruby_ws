# hash in ruby: [doc](https://launchschool.com/books/ruby/read/hashes)

- A hash is a data structure that stores items by associated keys.
- hash is created using keys and values, where:
  - **keys** are created using symbols, and
  - **values** can be any data types 
- All key-value pairs in a hash are surrounded by curly braces {} and comma separated.

## Iterating Over Hashes

- hashes can have multiple elements in them,  Iterating over hashes is similar to iterating over arrays with some small differences.
- use the `each` method

```rb
# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
    puts "Bob's #{key} is #{value}"
end
```

## Array vs Hashes(when to use what ?)

When deciding **whether to use a hash or an array**, ask yourself a few questions:

- Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.
- Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.
- Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

## common hash methods

### key ?

- it allows you to check if a hash contains a specific key.

### select

### fetch

### to_a

- returns an array version of your hash when called. 
