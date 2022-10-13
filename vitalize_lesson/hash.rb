#【問１】以下のuserに、ageというキーで値が24を追加し、userを表示してください。
user = {name: "佐藤", gender: "man"}
user[:age] = 24
puts user
# 【実行結果例】{:name=>"佐藤", :gender=>"man", :age=>24}
#【問２】以下のuserの中身を実行結果例のように表示するプログラムをeachメソッドを使って書いてください。
user = {name: "佐藤", gender: "man", age: 24}
#【実行結果例】
# name = 佐藤
# gender = man
# age = 24
user.each do |k, v|
  puts "#{k} = #{v}"
end