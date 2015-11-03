#!/usr/bin/env ruby

row = ""
grid = []
largest_product = 0

while not (row = gets).nil? do
  grid << row.split(" ").map {|i| i.to_i}
end

rows = grid.size
cols = grid[0].size # Assume same num of cols

# horizontal
for i in 0..(rows-1)
  for j in 0..(cols-4)
    product = grid[i][j..(j+3)].inject(:*)
    largest_product = product if largest_product < product
  end
end

for i in 0..(rows-4)
  for j in 0..(cols-1)
    product = grid[i][j] * grid[i+1][j] * grid[i+2][j] * grid[i+3][j]
    largest_product = product if largest_product < product
  end
end

for i in 0..(rows-4)
  for j in 3..(cols-1)
    product = grid[i][j] * grid[i+1][j-1] * grid[i+2][j-2] * grid[i+3][j-3]
    largest_product = product if largest_product < product
  end
end

puts largest_product
