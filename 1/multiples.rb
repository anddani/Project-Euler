#!/usr/bin/env ruby

sum = 0
Array(0..999).each do |i|
  sum += i if i % 3 == 0 || i % 5 == 0
end
puts sum
