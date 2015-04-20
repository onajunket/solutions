# fizzbuzz.rb

# Write a program that prints the numbers from 1 to 100.
# But for multiples of 3 print “Fizz” instead of the number
# and for the multiples of 5 print “Buzz” instead of the number.
# For numbers which are multiples of both 3 and 5 print “FizzBuzz”.

  for i in 1..100
        if i & 3 == 0 and i & 5 == 0
            print " fizzbuzz "
        elsif i & 3 == 0
            print " fizz "
        elsif i & 5 == 0
            print " buzz "
        else
            print i
        end
    end


# 	(1..100).each do |n|
#      if n % 15 == 0
#           puts "FizzBuzz"
#      elsif n % 3 == 0
#           puts "Fizz"
#      elsif n % 5 == 0
#           puts "Buzz"
#      else
#           puts n
#      end
# end


