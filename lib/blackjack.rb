require 'pry'

def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  sum
end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(currentTotal)
  prompt_user
  decision = get_user_input
  if decision == 'h'
    new_card = deal_card
    total = currentTotal + new_card
  elsif decision == 's'
    currentTotal
  else
    invalid_command
    hit?(currentTotal)
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
    
