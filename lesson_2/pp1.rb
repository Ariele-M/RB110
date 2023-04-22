arr = ['10', '11', '9', '7', '8']

#How would you order this array of number strings by descending numeric value?

# convert each string to an integer
# sort_by reverse
# output is new array

p (arr.sort do |a, b|
  b.to_i <=> a.to_i
end)

