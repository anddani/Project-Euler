#!/usr/bin/env ruby

require 'prime'

puts Prime.take_while {|p| p < 2000000}.inject(:+)
