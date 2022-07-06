def sum(tree)
  #左側の処理
  left = tree[1][1] + tree[1][2]
  #右側の処理
  right = tree[2]
  #全体の処理
  left + right
end

tree = ["+",["+",1,2],3]

p sum(tree)