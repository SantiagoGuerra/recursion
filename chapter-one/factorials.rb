def factorial(n)

  return 1 if n < 1 # base case

  n * factorial(n - 1) # recursive case
end 

puts factorial(5)