# Fizz Buzz

# from 1 -> 100
# if the number is divisible by 3, we say "fizz"
# if the number is divisible by 5, we say "buzz"
# if the number is divisible by both 3 and 5, we say "fizzbuzz"

# # psudeocode
# start at 0, start counting
#   eval the first number
#     if number visibility by 3 and visibility by 5
#       "fizzbuzz"
#     if number visibility by 3
#        "fizz"
#     if number visibility by 5
#       "buzz"
# end at 100
#
# (number % 3 == 0)

# I forget the syntax for divisible by
(1..100).each do |i|
  if (i % 5 == 0) && (i % 3 == 0)
    print "fizzbuzz"
  elsif (i % 3 == 0)
    print "fizz"
  elsif (i % 5 == 0)
    print "buzz"
  else
    print i
  end
end


(1..100).each do |i|
  print "fizz" if (i % 3 == 0)
  print "buzz" if (i % 5 == 0)
  print i unless (i % 3 == 0) && (i % 5 == 0)
end
