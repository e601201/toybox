#【問１】以下のUserクラスを完成させてください。
class User
  attr_accessor :last_name, :first_name, :gender, :age

  def print_greetings
    puts "こんにちは。#{last_name + first_name}です。性別は#{gender}です。歳は24です。"
  end

  def male?
    gender == '男'
  end
end

user1 = User.new
user1.last_name = '佐藤'
user1.first_name = '一郎'
user1.gender = '男'
user1.age = 24

user1.print_greetings

if user1.male?
  puts "#{user1.last_name}は男性です！"
else
  puts "#{user1.last_name}は女性です！"
end

#【実行結果例】
# こんにちは。佐藤一郎です。性別は男です。歳は24です。
# 佐藤は男性です！

# ---------------------------------------------

#【問２】 商品を表すProductというクラスがあります。
# これのサブクラスとしてBookとCDを実装してください。
# さらに、買い物かごを表すShoppingCartクラスも実装してください。

class Product
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Book < Product
  attr_accessor :author, :publisher, :page_count
end

class CD < Product
  attr_accessor :artist, :year, :songs
end

class ShoppingCart
  attr_accessor :count, :total_price
  def initialize(count= 0, total_price= 0)
    @count = count
    @total_price = total_price
  end
  def add_product(product)
    @count += 1
    @total_price += product.price
  end
end

book1 = Book.new('吾輩は猫である', 500)
book1.author = '夏目漱石'
book1.publisher = 'Vitalize出版'
book1.page_count = 400

cd1 = CD.new('SMAP', 1200)
cd1.artist = 'スマップ'
cd1.year = 2018
cd1.songs = ["青い稲妻", "世界に一つだけの花", "オレンジ"]

cart = ShoppingCart.new
cart.add_product(book1)
cart.add_product(cd1)

puts "買い物かごに入っている商品は全部で #{cart.count} 個です"
puts "金額は合計 #{cart.total_price} 円です"

#【実行結果例】
# 買い物かごに入っている商品は全部で 2 個です
# 金額は合計 1700 円です