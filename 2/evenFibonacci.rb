#!/usr/bin/env ruby

fib = Array.new
fib[0] = 1
fib[1] = 1
i = 2
sum = 0

while true do
  fib[i%3] = fib[(i-2)%3] + fib[(i-1)%3]
  if fib[i%3] > 4000000
    break
  end
  if fib[i%3] % 2 == 0
    sum += fib[i%3]
  end
  i += 1
end

puts sum
