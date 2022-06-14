str = ARGV[0]
array1 = []
array2 = []

t = 1
str.each_char do |s|
  if t.odd?
    array1 << s
  else
    array2 << s
  end
  t += 1
end
p array1.join + array2.join

#別解

i = str.length
j = 0
array1 = []
array2 = []

while j < i do
  d = str.split('')
  if j % 2 == 0
    array1 << d[j]
  elsif j % 2 == 1
    array2 << d[j]
  end
  j += 1
end

p array1.concat(array2).join