arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

p (arr.map do |ele|
  ele.select do |x|
    x % 3 == 0
  end
end)
