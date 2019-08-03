stay = false 
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  c = a + b
  display_card_total(c)
  c
end

def hit?
  x = get_user_input
  display_card_total
  if x = "h"
    deal_card
    display_card_total()
  elsif x = "s"
    
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  i = initial_round
  until display_card_total(i) > 21 || stay 
    hit? 
  end
  end_game
end
    
