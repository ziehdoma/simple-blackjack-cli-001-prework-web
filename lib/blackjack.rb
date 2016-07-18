def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)

  # code #deal_card here
end

def display_card_total(card_total)

puts "Your cards add up to #{card_total}"

  # code #display_card_total here
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"

  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  firstcard = deal_card
  secondcard = deal_card
  card_total = firstcard + secondcard

  display_card_total(card_total)
  return card_total


  # code #initial_round here
end

def hit?(card_total)


  prompt_user
  case get_user_input
  when ("s").downcase
    return card_total
  when ("h").downcase
    new_card = deal_card
    card_total = new_card + card_total
    display_card_total(card_total)
    return card_total
  else
    invalid_command
    prompt_user
 end

  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    end_game(card_total) if card_total > 21
    return card_total
  end
end
  # code runner here
