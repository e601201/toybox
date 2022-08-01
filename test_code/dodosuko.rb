array = ["ドド","スコ"]
a_length = array.length

dodosuko = String.new
no_ddsk = String.new
ddsk_array = String.new
t = 0
while t <= 2 do
  4.times do
    dodosuko += array[rand(0...a_length)]
  end
  if dodosuko == "ドドスコスコスコ"
    ddsk_array += dodosuko + "、"
    t += 1
  else
    no_ddsk += dodosuko
  end
  dodosuko = ""
end

p no_ddsk
p ddsk_array + "ラブ注入♡"
