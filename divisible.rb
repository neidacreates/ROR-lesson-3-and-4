# Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns.

def divisible
    answer = []
    (1...100).each do |number|
        if number % 2 == 0 || number % 3 == 0 || number % 5 == 0
            answer << number
        end
    end
    answer
end

result = divisible
puts result