playing_game = true

while playing_game
    secret_number = rand(1..100)
    guess = 0
    while guess != secret_number
        puts "guess a number between 1 and 100"
        guess = gets.chomp.to_i
        if guess == 0
            puts "invalid guess, try again"
        elsif guess > secret_number
            puts "Too high, try again"
        elsif guess < secret_number
            puts "Too low, try again"
        else
            puts "Correct guess!"
        end
    end
    puts "Would you like to play again? Answer Y or N)"
    answer = gets.chomp.upcase
    if answer == "N" 
        playing_game = false
    end
end