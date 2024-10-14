def add_three(n)
    n + 3
end


# calling the `times` method on the returned value of add_three(5), which is 8
add_three(5).times { puts 'this should print 8 times'}

def add_three(n)
    puts n + 3
end

add_three(5).times { puts "will this work?" }
