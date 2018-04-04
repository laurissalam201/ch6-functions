# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(x, y){
   shorter <- min(nchar(x), nchar(y))
   longer <- max(nchar(x), nchar(y))
   result <- longer >= (shorter*2)
   result
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("abc", "abcdef"))
print(is_twice_as_long("abcdef", "abc"))
print(is_twice_as_long("a", "b"))

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(x, y){
  diff <- nchar(x)-nchar(y)
  if(diff > 0){
    return <- paste("Your first string is longer by", diff, "characters")
  } else if(diff < 0){
    return <- paste("Your second string is longer by", -diff, "characters")    
  } else{
    return <- paste("Your strings are the same length!")
  }
  return

}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("pizza", "icecream")
describe_difference("icecream", "pizza")
describe_difference("good", "food")
