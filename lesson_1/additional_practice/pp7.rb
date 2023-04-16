statement = "The Flintstones Rock"
hash = {}
index = 0

loop do
  if statement[index] == " "
    index += 1
    next
  elsif hash.key?(statement[index])
    hash[statement[index]] += 1
  else
    hash[statement[index]] = 1
  end
  index += 1
  break if index == statement.size
end

p hash