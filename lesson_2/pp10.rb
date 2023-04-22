 p ([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |ele|
   ele.map { |k, v| k, v = k, v + 1 }.to_h
 end)


