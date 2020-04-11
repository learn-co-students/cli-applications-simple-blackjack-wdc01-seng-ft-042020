def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return (rand(11) + 1)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(num)
  # code hit? here
  prompt_user
  stdi = get_user_input
  if stdi == 'h' 
    num += deal_card
    return num
  elsif stdi == 's'
    return num
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  while hand <= 21 do
    
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
  
end