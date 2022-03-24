class MiniDevice
  attr_accessor :name, :email
  
  def initialize(name="",email="")
    @name = name
    @email = email
    @current_user = {}
  end
  def log_in
    if @name.empty? || @email.empty?
      puts "名前かメールアドレスが記入されてません"
    else
      @current_user[:name] = @name
      @current_user[:email] = @email 
      puts <<-EOS
      名前とメールアドレスを確認しました。
      ログインしました
      EOS
    end
  end
  def check_user_attr
    puts "名前は#{@current_user[:name]}、メールアドレスは#{@current_user[:email]}"
  end
  def log_out
    @current_user = nil
    puts "ログアウトしました"
  end
  def login?
    !!@current_user #二重否定,nilもfalseで返す
    #!cuurent_user.nil?と同義
  end
end

puts '名前を教えて'
name = gets.chomp
puts 'emailアドレスを教えて'
email = gets.chomp
user = MiniDevice.new(name,email)

puts <<-EOS
"#{user.name}さんこんにちは"
ログインしますか？（y/n）
EOS
a = gets.chomp
if a == 'y'
  user.log_in
  elsif a == 'n'
  puts "了解しました"
  else  
  puts <<-EOS
  不正を検知しました。
  終了します。
  EOS
end

while user.login? == true do
  puts "ログアウトする?(y/n)"
  n = gets.chomp
  if n == "y"
    user.log_out
  elsif n == "n"
    puts "わかりました"
    user.check_user_attr
  else
    puts'不正な番号です'
  end
end
puts "ありがとうございました"