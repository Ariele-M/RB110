# select only odd numbers in each element/sub-array. order elements. return new 
# ordered top level array



arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

p (arr.sort_by do |ele|
  ele.select do |num|
    num.odd?
  end
  end)
