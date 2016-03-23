#################################### Elementary ##################################

puts "Please enter a sentence:"
sentence = gets.chomp.split(' ')
puts "The total number of words in your sentence are: #{sentence.length}"

############################### adriann @ github ##################################

# problem 1 : Write a program that prints ‘Hello World’ to the screen.

puts "Hello World"

# problem 2 : Write a program that asks the user for her name and greets her with her name.

puts "Hi there!, what\'s you\'re name:"
userName = gets.chomp
puts "Hi #{userName}"

# problem 3 : Modify the previous program such that only the users Alice and Bob are greeted with their names.

puts "Hi there!, what\'s you\'re name:"
string = gets.chomp
userName = string.upcase
case
when userName == "alice"
  puts "Hi Alice!"
when userName == "bob"
  puts "Hi Bob!"
end

# problem 4 : Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
# problem 5 : Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

puts "Please input a number:"
number = gets.chomp.to_i
sum = 0
a = 0
while a < number
  a = a + 1
=> # ignore if block for problem 4
  if (a % 3 == 0) || (a % 5 == 0)
    sum = sum + a
  end
end
puts "The sum is #{sum}"

# problem 6 : Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,…,n.

puts "Please input a number:"
number = gets.chomp.to_i
puts "Do you want to multiply (m) or add (a)"
choice = gets.chomp
sum = 0
product = 1
a = 0
case
when choice == "m"
  while a < number
    a = a + 1
    product = product * a
  end
  puts "The product is #{product}"
when choice == "a"
  while a < number
    a = a + 1
    sum = sum + a
  end
  puts "The sum is #{sum}"
end

# problem 7 : Write a program that prints a multiplication table for numbers up to 12.

puts "Please input a number:"
number = gets.chomp.to_i
a = 0
while a < 12
  a += 1
  puts number * a
end

# problem 8 : Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)

prime = 3

if prime % 2 !== 0
  fjd
else
  prime += 1

# problem 9 : Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether their number was too large or too small. At the end the number of tries needed should be printed. I counts only as one try if they input the same number multiple times consecutively.

prng = Random.new
guess_number = prng.rand(1000)
puts "Please enter a number: "
input_number = gets.chomp.to_i
attempts = 1
while input_number != guess_number
  if input_number < guess_number
    puts "Too small!"
    puts "Please enter a bigger number: "
    input_number = gets.chomp.to_i
    attempts += 1
  elsif input_number > guess_number
    puts "Too big!"
    puts "Please enter a smaller number: "
    input_number = gets.chomp.to_i
    attempts += 1
  end
end
puts "Congratulations! You have guessed the right number in #{attempts} attempts"

# problem 10 : Write a program that prints the next 20 leap years

leap_year = 2016
count = 0
while count < 25
  leap_year += 4
  puts leap_year unless (leap_year % 100 == 0) && (leap_year % 400 != 0)
  count += 1
end

# problem 11 : Write a program that computes
# 4⋅∑ k=1 to 10^6 of ((-1)^k+1) / (2k-1) = 4⋅(1-1/3+1/5-1/7+1/9-1/11…).

count = 0
denominator = 1.0
sum = 1.0
sum
denominator
operator = "add"
while count < 1000
    if operator == "add"
      denominator += 2.0
      sum -= 1/denominator
      operator = "sub"
    else
      denominator += 2.0
      sum += 1/denominator
      operator = "add"
    end
    count += 1
end
puts sum

#################################### Lists, Strings ##################################

# problem 1 : Write a function that returns the largest element in a list.

my_array = [2, 5, 10, 4, 5, 500, 55]
def largest(array)
  largest = 0
  array.each { |x| largest = x if x > largest }
  puts largest
end

largest(my_array)

# problem 2 : Write function that reverses a list, preferably in place.

my_array = [2, 5, 10, 4, 5, 500, 55]
new_array = []
a = 0
b = my_array.length
while a < b
  x = my_array.pop
  new_array.insert(-1,x)
  a += 1
end
puts new_array

# problem 3 : Write a function that checks whether an element occurs in a list.

my_array = [2, 5, 10, 4, 5, 500, 55]
puts "Please enter a number to check: "
character = gets.chomp.to_i
my_array.each { |x| puts "Found #{character}" if x == character }

# problem 3

my_array = [2, 5, 10, 4, 5, 500, 55]
my_array.each { |index, value| puts "Found #{character}" if x == character }
