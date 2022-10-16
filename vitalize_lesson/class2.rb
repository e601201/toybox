#【問３】 まずは問題1で作ったUserクラスを親クラスとしたShoppingUserクラスを作成してください。次に問題2で作ったBookとCD、およびShoppingCartクラスをそのまま利用して、買い物かごに商品を追加し、チェックアウトしたあとに残高が表示できるプログラムを完成させてください。
# ※その際今回の要件に不要なメソッドは削除して下さい。

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
  def initialize
    @count = 0
    @total_price = 0
  end
  def add_product(product)
    @count += 1
    @total_price += product.price
  end
end

class User
  attr_accessor :last_name, :first_name, :gender, :age
end

class ShoppingUser < User
  attr_accessor :possession_money, :user_shopping_cart

  def initialize(money)
    @possession_money = money
    @user_shopping_cart = ShoppingCart.new
  end

  def into_cart(item)
    user_shopping_cart.add_product(item)
  end

  def checkout
    if user_shopping_cart.total_price <= possession_money 
      success_checkout
    else
      failure_checkout
    end
  end

  private

  def success_checkout
    puts <<~EOS
      #{last_name}は#{user_shopping_cart.count}個の商品を購入し、全部で#{user_shopping_cart.total_price}円支払いました。
      結果として残りの所持金は#{rusult_possession}円です。
    EOS
  end

  def failure_checkout
    puts <<~EOS
      #{last_name}はチェックアウトできませんでした。
      なぜなら買い物の合計金額が#{user_shopping_cart.total_price}円なのに対し、所持金は#{possession_money}円しかなかったからです。
    EOS
  end

  def rusult_possession
    possession_money - user_shopping_cart.total_price
  end

end

book1 = Book.new('吾輩は猫である', 1000)
book1.author = '夏目漱石'
book1.publisher = 'Vitalize出版'
book1.page_count = 400

cd1 = CD.new('SMAP', 1500)
cd1.artist = 'スマップ'
cd1.year = 2018
cd1.songs = ["青い稲妻", "世界に一つだけの花", "オレンジ"]

money = 10000

user1 = ShoppingUser.new(money)
user1.last_name = '山田'
user1.first_name = '花子'
user1.gender = '女'
user1.age = 30

user1.into_cart(book1)
user1.into_cart(cd1)
user1.checkout

#【実行結果例1】
# 山田は2個の商品を購入し、全部で2500円支払いました。
# 結果として残りの所持金は7500円です。

#他のパラメータを変えずチャージ金額だけを100円にした場合
# user1 = ShoppingUser.new(100)
#【実行結果例2】
# 山田はチェックアウトできませんでした。
# なぜなら買い物の合計金額が2500円なのに対し、所持金は100円しかなかったからです。
