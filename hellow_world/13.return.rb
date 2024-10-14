def add_three(number)
    number + 3
    number +10
    number + 20
end
  
returned_value = add_three(4)
puts returned_value

# Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

# If you wanted to explicitly return a value you can use the return keyword.

def add_three(number)
   return  number + 3
    number +10
    number + 20
end
  
returned_value = add_three(4)
puts returned_value

def add_three(number)
    number + 3
    return number +10
     number + 20
 end
   
 returned_value = add_three(4)
 puts returned_value
