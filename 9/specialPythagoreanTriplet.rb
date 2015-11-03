#!/usr/bin/env ruby

(1..22).each do |m|
  ((m+1)..23).each do |n|
    a = n**2 - m**2
    b = 2*n*m
    c = n**2 + m**2

    if a+b+c == 1000
      puts a*b*c
    end
  end
end
