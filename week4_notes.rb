my_array = [1, 2, 3, 4, 5, 6]
#TODO is the 2 parameter saying to go in increments of 2?
my_array.each_slice(2) do |first, second|
    puts "First: #{first}, second: #{second}"
end

my_array.each_slice(3) do |first, second, third|
    puts "First: #{first}, second: #{second}, third: #{third}"
end

my_array.map do |element|
    puts element * 2
end

#TODO I don't understand what the _1 and _2 are doing here, I thought they stood for the first and second element in the array?
my_array.reduce { _1 * _2 }
#=> 720
# Since `my_array` is [1, 2, 3, 4, 5, 6], this is equal to 1 * 2 * 3 * 4 * 5 * 6

# RUBY METHODS
#TODO Isn't a method the same thing as a function?
# you don't need the return keyword, it will automatically return the value of the last expression in the method
def multiply(x, y)
    x * y
end

multiply 6, 7

# RUBY CLASSES
# everything in ruby is an object aka instance of a class
first_string = "aardvark"
second_string = "beetle"
#we have two instances of the String class.  Each instance stores different data

class RectangleOne  # Note: CamelCase, starting with a capital, is used for classes.
    attr_accessor :width, :height
    @@count = 0
    def initialize(width, height)
        @width = width
        @height = height
    end

    def area
      @width * @height
    end
    def self.report
        @@count += 1
        puts "RectangleOne, reporting.  This method has been invoked #{@@count} times."
    end
end

class RectangleTwo
    def initialize(width, height)
        @width = width
        @height = height
    end

    def area
      @width * @height
    end

    def width #getter
        @width
    end

    def width= width # setter
        @width = width
    end
end

RectangleOne.report
RectangleOne.report

rect1 = RectangleOne.new(5, 4)
rect2 = RectangleOne.new(6, 3)

puts rect1.height
puts rect1.area
puts rect2.area

rect3 = RectangleTwo.new(7, 2)
puts rect3.area
puts rect3.width
rect3.width=4
puts rect3.width
puts rect3.height # throws an error

# TODO the difference between instance variable and class variables: instance variables are with @ and every instance of a class has different ones. Class variables are @@ and every instance of a class shares that variable

# the RectangleTwo class doesn't use attr_accessor to access the instance variables but instead has getter and setter methods for width attribute. Does not have them for height so that's why there is an error

# When we get to Rails, you will see class declarations like this:

# class CustomersController < ApplicationController
# ...
# end

# Here, a class is being declared that inherits from the ApplicationController class.  That means that all the behavior of the CustomerController class is the same as the ApplicationController class, except for what is overridden within the CustomerController class. 

# RUBY MODULES
# when you want to implement the same behaviors in several classes
# both RectangleOne and RectangleTwo have a method called area
# instead create an Area module
module Area
    def area
      @height * @width
    end
end

class RectangleOne
    include Area
    # ...
end

class RectangleTwo
    include Area
    # ...
end

# RUBY REQUIRE
# split ruby program into several files
# for example, putting the area module in one file and the rectangle class in another file
# at the top of rectangle.rb say
# require './area.rb'

# RUBY STANDARD LIBRARY AND RUBY GEMS
# As you write Ruby programs, you have to use a variety of classes and modules.  These include basic ones like String, Hash, and Array, but there are many more in the standard library.  These are documented at https://ruby-doc.org/.  As you practice with Ruby, you should refer to that documentation.

# In addition to the standard library, there are gems.  These are libraries of classes and modules that you can install and use.  These are available at https://rubygems.org/.  Gems in Ruby are like npm packages in JavaScript.  We will use many.  Rails itself is a gem.  An exercise below will show you the steps in installing and using a gem.

# TODO Confused on how the sort method works, if there an animation i can look at?

# GEMS
# gems your program needs are listed in the Gemfile
# The Faker gem is used for testing, in that it can generate random names, phone numbers, email addresses, passwords, and so on for use in a test scenario.