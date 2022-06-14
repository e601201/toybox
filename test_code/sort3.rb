str = ARGV[0]
divided_words = str.split(/\W+/)
p divided_words.map{|s| s.size}

# 別解
p str.delete(',.').split.map{ |w| w.length }