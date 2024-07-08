playing_game = true

while playing_game
    high = 100
    low = 1
    
    puts "Think of a number between 1 and 100 and I will try to guess it"
    puts "Tell me if it's 'too high' 'too low' or 'correct' (in those exact words)"

    correctly_guessed = false

    while !correctly_guessed
        guess = (high + low) / 2
        puts "My first guess is #{guess}, is that correct?"
        response = gets.chomp.downcase

        if response == "too low"
            low = guess + 1
        elsif response == "too high"
            high = guess - 1
        elsif response == "correct"
            correctly_guessed = true
            puts "I got it!"
        else
            puts "Please answer with 'too low' 'too high' or 'correct' in those exact words"
            next
        end

        # detecting the lying if the range doesn't make sense anymore
        if low > high 
            puts "You're lying! Starting the game over now"
            correctly_guessed = true
        end
    end

    # would you like to play again?
    puts "Would you like to play again? Answer Y or N)"
    answer = gets.chomp.upcase
    if answer == "N" 
        playing_game = false
    end
end