# 引数にアスタリスク１つをつけると配列になる
def hoge_1(*a)
  p a
end

hoge_1(1)
#=> [1]
hoge_1(1,2)
#=> [1, 2]

#メソッドの仮引数の前に* を付けると、複数の引数をまとめて配列として受け取ることができます。
#ただしこの可変長引数は1メソッドにつき、1つだけしか指定できません。
def hoge_2(bar, *baz)
  p bar, baz
end
hoge_2(1,2,3)
#=> 1
#=> [2,3]

# アスタリスク単体で、受け取った引数を無視できる
def hoge_3(bar, *)
  p "#{bar} world!!!"
end

hoge_3('Hello', 'hoge', 'fuga') 
#=> "Hello world!!!"

# 仮引数ではなく実引数にアスタリスクをつけると、配列を展開して渡される
def foo(bar, baz, qux)
  p bar << baz << qux
end

foo(*['Hello', 'World', '!!!']) # foo('Hello','World','!!!')と同意
#=> "HelloWorld!!!"

# アスタリスク2つつけるとハッシュになる
def huga(**a) # def huga(a = {})と同意
  p a
end

huga(b:1,c:2)
#=> {:b=>1, :c=>2}

def huga_2(a)
  p a 
end
huga_2({a:1,b:2})