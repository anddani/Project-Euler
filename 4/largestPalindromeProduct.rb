#!/usr/bin/env ruby

largest = 0
palindrome = lambda do |str|
  return str == str.reverse
end

(100..999).each do |i|
  (100..999).each do |j|
    largest = i*j if palindrome.call((i*j).to_s) && largest < i*j
  end
end

puts largest
