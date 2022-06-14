a = [1 , 2 , 3 ]

p a
p a.object_id  #=> 60
p a[0].object_id  #=> 3

def foo(numbers)
  p numbers[0].object_id #=> 3
  numbers[0] = 10
  p numbers[0].object_id #=> 21
end

foo(a)

p a
p a.object_id #=> 60
p a[0].object_id #=> 21


