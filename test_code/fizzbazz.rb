i = ARGV[0].to_i
# t = 1
# i.times do
#   if t%15 ==  0
#     puts "らんてくん"
#   elsif t%5 == 0
#     puts "くん"
#   elsif t%3 == 0
#     puts "らんて"
#   else
#     puts t
#   end
#   t += 1
# end

1.upto(i) do |t|
  if t%15 ==  0
    puts "らんてくん"
  elsif t%3 == 0
    puts "らんて"
  elsif t%5 == 0
    puts "くん"
  else
    puts t
  end
end