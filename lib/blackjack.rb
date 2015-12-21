def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    card = rand(1..11)
end

def display_card_total(sum)
    puts "Your cards add up to #{sum}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   answer = gets.chomp.downcase
   return answer
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    sum = deal_card + deal_card
    display_card_total(sum)
    return sum
end

def hit?(card_total)
    prompt_user
    action = get_user_input
    card_total
    if action == "s"
        elsif action ==="h"
        card_total = deal_card + card_total
        return card_total
        else
        invalid_command
        end
    return card_total
end

def invalid_command
    puts "Please enter a valid command"
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    # code runner here
    welcome
    card_total = initial_round
    #card_total = hit?(card_total)
    until card_total > 21 do
        card_total = hit?(card_total)
        display_card_total(card_total)
        #return new_card_total
    end
    end_game(card_total)
end

    
