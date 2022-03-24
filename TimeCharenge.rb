class TimeCharenge
  attr_accessor :start_t, :stop_t
  def initialize(start_t,stop_t)
    @start_t = start_t
    @stop_t = stop_t
  end
  def result_announce
    result = @stop_t - @start_t 
    puts "結果は#{result.round(2)}秒"
    if 4.95 <= result && result <= 5.05
    puts 'おめでとう！君は最高だ！！'
    else
    puts '残念！また遊んでね'
    end
  end
end

puts 'enterで始まるよ'
gets.chomp #開始ボタン代わり
puts 'Start!!'
start_time = Time.now
puts '5秒したらenterを押そう'
gets.chomp #終了ボタン代わり
stop_time = Time.now
t = TimeCharenge.new(start_time,stop_time)
puts "enterで結果発表"
gets.chomp 
t.result_announce
