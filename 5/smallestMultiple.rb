#!/usr/bin/env ruby

require 'prime'

factors = Array.new
largestFrequency = Hash.new
smallestMultiple = 1

(1..20).each do |i|
  factors = factors + i.prime_division
end

factors.each do |i|
  largestFrequency[i[0]] = i[1] if largestFrequency[i[0]].to_i < i[1]
end

largestFrequency.each do |k,v|
  smallestMultiple *= k**v
end

puts smallestMultiple
