#【問１】以下のlistの2番目を表示してください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】 アイコ
puts list[1]
#【問２】以下のlistの末尾にユウヤを加えて、listを表示してください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】
# タツヤ
# アイコ
# ヒロユキ
# ミカ
# ユウヤ
puts list.push("ユウヤ")

#【問３】以下のlistに格納されているオブジェクトの個数を表示してください。
list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]
#【実行結果例】 4
puts list.size