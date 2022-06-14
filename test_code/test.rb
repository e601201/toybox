X = gets.to_i    

time = 0
position = 0

while position < X do
  time += 1
  position = (time * (1 + time)) / 2
end

puts time