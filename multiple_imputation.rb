puts '好きな数字を教えてください'

num = gets.chomp.to_i

puts '何の倍数にしますか？'

t = gets.chomp.to_i

puts "#{num}までの#{t}の倍数は#{Array(t...num).uniq{|i| i/t}}です"