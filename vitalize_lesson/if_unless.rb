#【問１】以下のlistの中身を確認し、実行結果例を出力をするプログラムを書いてください。
# ※ただし、条件判断にはifを使ってください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】
#「タツヤ」は「男性」です
#「アイコ」は「女性」です
#「ヒロユキ」は「男性」です
#「ミカ」は「女性」です
list.each do |person|
  if person == "タツヤ" || person == "ヒロユキ"
    gender = "男性"
  else
    gender = "女性"
  end
  puts "「#{person}」は「#{gender}」です"
end

#【問２】以下のlistの中身を確認し、実行結果例を出力をするプログラムを書いてください。
# ※ただし、条件判断には三項演算子を使ってください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】
#「タツヤ」は「男性」です
#「アイコ」は「女性」です
#「ヒロユキ」は「男性」です
#「ミカ」は「女性」です
list.each do |person|
  person == "タツヤ" || person == "ヒロユキ" ? gender = "男性" : gender = "女性"
  puts "「#{person}」は「#{gender}」です"
end

#【問３】このプログラムはどのような出力がされますか？
# power = 180
# sleepy = 50
# puts ((power - sleepy) > 100) ? 'もうひと踏ん張り！' : '諦めて寝る！'
# 【回答】もう一踏ん張りが出力される


# 【問４】以下のlistの中身を確認し、実行結果例を出力をするプログラムを書いてください。
# ※ただし、条件判断にはcaseを使ってください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
# 【実行結果例】
# 「タツヤ」は「男性」です
# 「アイコ」は「女性」です
# 「ヒロユキ」は「男性」です
# 「ミカ」は「女性」です
list.each do |person|
  case person
  when "タツヤ","ヒロユキ" then
    gender = "男性"
  when "アイコ","ミカ" then
    gender = "女性"
  end
    puts "「#{person}」は「#{gender}」です"
end



# 【問５】以下のlistの中身を確認し、実行結果例を出力をするプログラムを書いてください。
# ※ただし、条件判断にはunlessを使ってください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】
# 「タツヤ」は「男性」です
# 「アイコ」は「女性」です
# 「ヒロユキ」は「男性」です
# 「ミカ」は「女性」です
list.each do |person|
  unless person == "タツヤ" || person == "ヒロユキ"
    gender = "女性"
  else
    gender = "男性"
  end
  puts "「#{person}」は「#{gender}」です"
end