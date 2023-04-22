# output: array of hashes with all even values

# select 
# each
# values.all? even?

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p (arr.select do |hsh|
  p (hsh.all? do |_, v|
    v.all? { |ele| ele.even? }
  end)
end)
