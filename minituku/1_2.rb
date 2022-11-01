=begin
コンテンツ概要
コード例で呼び出しているclever_printメソッドを定義しましょう。clever_printメソッドのおこなう処理は、コメントアウトされている出力例から推測してください。

この演習を回答するのに必要と思われる時間は、10分です。

演習
以下のコードがコメント部分の通りの出力となるように、「clever_print」メソッドの定義を書いてください。

コード例
clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0

=end

# 自分の回答
=begin
def clever_print(hoge,huga,piyo)
  if piyo.class == Array
    piyo = piyo.join(" ")
  else
    piyo = piyo.keys.first.to_s + " " + piyo.values.first.to_s
  end
  puts "#{hoge.join} #{huga} #{piyo}"
end
=end

#模範回答
def clever_print(*args)
  converted = []
  args.each do |arg| 
    arg.class == String ? converted << arg : converted << arg.to_a
  end
  puts converted.join(" ")
end




clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0