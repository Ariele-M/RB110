cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11 # OR 1
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

