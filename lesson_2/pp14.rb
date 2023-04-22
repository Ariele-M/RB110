# input: hash
# output: array

# explicit
# - colors of fruits and sizes or vegetables returned
# - colors capitalized
# - sizes all uppercase

# Algorithm
# - initialize color_size array
# - sort for type:fruit
# - add value for colors.capitalize and size.upcase to new array

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

color_size = []


hsh.each do |_, details|
  if details[:type] == 'fruit'
    color_size << details[:colors].map { |word| word.capitalize }
  else
    color_size << details[:size].upcase
  end
end

p color_size
