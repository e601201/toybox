def fizz_buzz(n)
  i = 1
  while i <= n
    if i % 15 == 0
      p "FizzBuzz!"
    elsif i % 5 == 0
      p "Buzz!"
    elsif i % 3 == 0
      p "Fizz!"
    else
      p i
    end
    i += 1
  end
end

fizz_buzz(ARGV[0].to_i)