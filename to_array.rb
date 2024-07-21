# Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  Write a method that accepts the hash as a parameter and prints out an array of keys and an array of values.  Call the method within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this method?)  Call this program hash_to_array.rb.

def print_out(hash)
    keys = hash.keys
    values = hash.values
    puts "The keys are: #{keys}"
    puts "The values are: #{values}"

end

hash = {}

5.times do |i|
    puts "Enter a key"
    key = gets.chomp
    puts "Enter a value"
    value = gets.chomp
    hash[key] = value
end

print_out(hash)