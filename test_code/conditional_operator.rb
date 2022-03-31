def test(t = '')
  if t.empty?
    puts '入ってません'
  else
    puts '入ってます'
  end
end
def test2(t = '')
  t.empty? ? '入ってません' : '入ってます'
end

test()

puts test2() #--- 三項演算子の場合はputs が必要