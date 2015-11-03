#!/usr/bin/env ruby

sequence = gets.gsub("/\n/","").chomp.scan(/\d/).map { |i| i.to_i }

largest = 0
product = 0


(0..987).each do |i|
  product = sequence[i..(i+12)].inject(:*)
  largest = product if largest < product
end

puts largest
