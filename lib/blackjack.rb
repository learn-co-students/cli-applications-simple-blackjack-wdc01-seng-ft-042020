def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1...12)
end

def display_card_total(total_card)
  # code #display_card_total here
  puts "Your cards add up to #{total_card}"
end

def prompt_user
  # code #prompt_user here
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
gets.chomp
end

def end_game(total_card)
  # code #end_game here
puts "Sorry, you hit #{total_card}. Thanks for playing!"
end

require 'pry'
def initial_round
  # code #initial_round here
sum_of_deal_card = deal_card + deal_card
display_card_total(sum_of_deal_card)
sum_of_deal_card
end

def hit?(sum_of_deal_card)
  # code hit? here
prompt_user
answer = get_user_input

if answer == 'h'
sum_of_deal_card += deal_card
elsif answer == 's'
  sum_of_deal_card
else
  invalid_command
  #binding.pry
  hit?(sum_of_deal_card)
  end
#sum_of_deal_card
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
welcome
total_card_dealt = initial_round

until total_card_dealt > 21
  total_card_dealt = hit?(total_card_dealt)
  display_card_total(total_card_dealt)
end
end_game(total_card_dealt)
end

#  welcome
#  initial_round
#  prompt_user
#  answer = get_user_input
#  if answer == 's'
#   prompt_user
# elsif answer == 'h'
# deal_card
# display_card_total
# end
# until initial_round > 21
#   display_card_total
# end
#   end_game
