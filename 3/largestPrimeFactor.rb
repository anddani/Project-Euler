#!/usr/bin/env ruby

require 'prime'

largestPrime = 0

600851475143.prime_division.each do |p|
  largestPrime = p[0] if p[0] > largestPrime
end

puts largestPrime
