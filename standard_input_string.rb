# 一行に一要素だけしか存在しない場合
# Tokyo
line = gets.chomp
p line #=> "Tokyo"

# 一行に複数要素存在する場合
# Tokyo Osaka Kyoto
line = gets.split(' ')
p line #=> ["Tokyo", "Osaka", "Kyoto"]

#文字をそれぞれ一文字ずつ取得したい場合
# Tokyo
line = gets.chomp.split('')
p line #=> ["T", "o", "k", "y", "o"]
#もしくは
line = gets.chomp.chars #=> ["T", "o", "k", "y", "o"]
p line

#複数行に一つずつ要素が存在する場合
# 標準入力 Tokyo\nOsaka\nKyoto

#line = readlines
# len = line.length
# i = 0

# while i < len
#     line[i] = line[i].chomp
#     i += 1
# end

line = readlines.map(&:chomp)
p line 

#複数行に複数要素が存在する場合
# 標準入力 Tokyo Osaka Kyoto\nJapan USA China

line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp.split(' ')
    i += 1
end

p line #=> [["Tokyo", "Osaka", "Kyoto"], ["Japan", "USA", "China"]]

#もっと簡単な方法

# lines = []
# while line = gets
#     lines << line.chomp.split(' ')
# end
lines = readlines(chomp: true).map{|i| i.split}
p lines