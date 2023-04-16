flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0

loop do
  if flintstones[counter].start_with?('Be')
    p counter
    break
  end
  counter += 1
  break if counter > flintstones.size
end

