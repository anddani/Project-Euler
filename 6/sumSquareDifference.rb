#!/usr/bin/env ruby

sum_of_squares = 0
square_of_sum = 0

(1..100).each do |i|
  sum_of_squares += i**2
  square_of_sum += i
end

square_of_sum = square_of_sum**2

puts square_of_sum - sum_of_squares
