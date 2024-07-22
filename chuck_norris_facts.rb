require 'faker'
playing = true

while playing
    puts "Do you want a fact about Chuck Norris? Answer yes or no"
    answer = gets.chomp.downcase
    if answer == "yes"
        puts Faker::ChuckNorris.fact

    elsif answer == "no"
        playing = false
    end
end
