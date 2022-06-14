str = ARGV[0]
str_size = str.length-1
array = []
str.each_char do
  array << str[str_size]
  str_size -= 1
end
puts array.join