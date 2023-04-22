hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

  # access the string values
  # identify if each character in the string is a vowel or not
  # if charater is a vowel, it is output. if not, next

  string = hsh.values.flatten.join
  
  string.each_char do |char|
    if char.match(/[aeiou]/i)
      puts char
    end
  end

