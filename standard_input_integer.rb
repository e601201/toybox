# 一行に１要素だけしか存在しない
# 標準入力 123
line = gets.to_i
p line #=> 123

# 一行に複数要素存在する場合
# 標準入力 1 2 3
line = gets.split(' ')
p line #=> ["1", "2", "3"]

# intに変換する場合
line = gets.split(' ').map(&:to_i)
p line #=> [1,2,3]

# 複数行に一つずつ要素が存在する場合
# 標準入力 1\n2\n3
line = readlines.map(&:to_i)
p line #=> [1,2,3] 

# 複数行に複数要素が存在する場合
# 1 2 3\n4 5 6

lines = []
while line = gets
  lines << line.split.map(&:to_i)
end
p lines 
# より簡潔に
lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
p lines
