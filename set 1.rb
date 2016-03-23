- Given the array below, find the minimum number in the array, and its index.
 => Input: [1, 2, 45, -7, 24, 6, 5, -12, 14]; Output: "-12, 7"
   Note: Use string concat to print the number and index on a single line.

array = [1, 2, 45, -7, 24, 6, 5, -12, 14]
minimum = 0
index = 0
array.map.with_index do |n, i|
  minimum, index = n, i if n < minimum
end
puts "The minimum number is #{minimum} and its index is #{index}"

- Given an array of integers, calculate which fraction of the elements are positive, negative, and zeroes, respectively. Print the decimal value of each fraction.
 => Input: [1, 4, -3, 0, 7, -5, 0, -6]
    Output:
     "0.375"
     "0.375"
     "0.25"

array = [1, 4, -3, 0, 7, -5, 0, -6]
n = 0.0
positive = 0.0
negative = 0.0
zeroes = 0.0
# positive, negative, zeroes = 0, 0, 0
while n < array.length
  n += 1
  if array[n].to_i > 0
    positive += 1
  elsif array[n].to_i < 0
    negative += 1
  elsif array[n].to_i == 0
    zeroes += 1
  end
  # case
  #   when array[n] > 0
  #     positive += 1
  #   when array[n] < 0
  #     negative += 1
  #   when array[n] == 0
  #     zeroes += 1
  # end
end
puts "The positives are #{positive/array.length}, the negatives are #{negative/array.length}, the zeroes are #{zeroes/array.length}"

- Given a sentence, reverse all words of the sentence. Try to do it using minimum lines of code, using high level string methods provided by language.
 Eg: reverse_words(“This is a cat”)
     Expected_output: "sihT si a tac"

puts "Please enter sentence to reverse..."
sentence = gets.chomp
words = sentence.split
words.each do |word|
  word.reverse!
end
puts words.join(" ")

- Find all pairs in array of integers whose sum is equal to given number?
 =>Input: sum = 8
   [1, 4, 3, 5, 4, 6, 7, 8, 3]
   Output:
   "1, 7"
   "4, 4"
   "3, 5"
   "5, 3"

puts "Please enter a number"
# number = gets.chomp.to_i
sum = 8
array = [1, 4, 3, 5, 4, 6, 7, 8, 3]
i= 0
j = 0
while i < array.length
  j = i + 1
  while j < array.length
    puts "#{array[i]}, #{array[j]}" if (array[i] + array[j]) == sum
    j += 1
  end
  i += 1
end

- Given a number(n) print out a triangle with "#" n times in the first line, n-1 times in the second line, n-2 times in the third line and so on.
 =>  Input: n = 7
     Output:
     "#######"
     "######"
     "#####"
     "####"
     "###"
     "##"
     "#"

input = 7
a = input
while a > 0
  puts "#"*a
  a -= 1
end

- Given an array print all the numbers that are repeating in it.
 =>  Input: [1, 2, 3, 5, 8, 4, 7, 9, 1, 4, 12, 5, 6, 5, 2, 1, 0, 8, 1]
     Output:
     "1"
     "2"
     "5"
     "8"
     "4"
   Note: The final order of output need not be the same as above.

input = [1, 2, 3, 5, 8, 4, 7, 9, 1, 4, 12, 5, 6, 5, 2, 1, 0, 8, 1]
numbers = {}
i = 0
while i < input.length
  if numbers[input[i]] == nil
    numbers[input[i]] = 1
  else
    numbers[input[i]] += 1
  end
  i += 1
end
numbers.each do |key, value|
    puts "#{key} appears #{value}" if key > 2
end

- Given three positive integers, write a function to check whether these three numbers
can be used to form a triangle or not.
 =>  Input: 3, 4, 5
     Output: "True"
     Input: 1, 1, 2
     Output: "False"

input = [1, 1, 2]
a = input[0]
b = input[1]
c = input[2]
if ((a+b >c) & (a+c >b) & (b+c >a))
  p true
  else
    p false
end

- Given a positive integer n, write a function to check whether the number is prime or not.
 =>  Input: 78
     Output: "False"
     Input: 37
     Output: "True"

- Given a string, write a function to return an object that states how many times
each letter is present.
 =>  Input: "Lorem Ipsum dolor Sit amet Consectetur adipisicing Elit"
     Output:{"l": 3, "o": 4, "r": 3, .......}

input = "Lorem Ipsum dolor Sit amet Consectetur adipisicing Elit".downcase
numbers = {}
input.each_char do |chr|
   if numbers[chr] == nil
     numbers[chr] = 1
   else
     numbers[chr] += 1
   end
end# input = "Lorem Ipsum dolor Sit amet Consectetur adipisicing Elit".downcase
numbers = {}
input.each_char do |chr|
   if numbers[chr] == nil
     numbers[chr] = 1
   else
     numbers[chr] += 1
   end
end
p numbers
p numbers
.each do |key, value|
    puts "#{key} appears #{value}" if key > 2
end

- Given an object, containing names as keys and amount_paid by each of them as
values, write a function that takes such an object as input and calculates the total sum paid by them together.
 =>  Input: {"Rick": 85, "Amit": 42, "George": 53, "Tanya": 60, "Linda": 35}
     Output: 275

input = {"Rick": 85, "Amit": 42, "George": 53, "Tanya": 60, "Linda": 35}
total = 0
input.each do |key, value|
  total += value
end
p total

- Write a function that takes a number as input and returns the factorial of that number.
 Note: n! stands for factorial of n.
 n! = n*(n-1)*(n-2)*....*1
 =>  Input: 5
     Output: 120
     Input: 9
     Output: 362880

def factorial(n)
  if n<1
    1
  else
    n*factorial(n-1)
  end
end
p factorial(9)

- Solve the above problem using recursion.
 =>  Input: 5
     Output: 120
     Input: 9
     Output: 362880

Done above

- Given a non-negative int n, return the sum of its digits recursively (no loops).
 Note: modulus (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (Math.floor(126/10) is 12).
 =>  Input: 123
     Output:6
     Input: 456
     Output: 15
4:53

def sumOfDigits(number)
  sum = 0
  if number < 10
     number
   else
    sum = number % 10 + sumOfDigits((number/10).round)
  end
end
p sumOfDigits(456)

- Write a function to check whether a given string is a palindrome or not.
   Note: The method only returns a boolean.
 =>  Input: "Mom"
     Output: true
     Input: "sister"
     Output: false

input = "sister".downcase!
i = 0
palindrome = false
while i < input.length / 2
  p "in while"
  if input.slice(i) == input.slice(-(i + 1))
    p "in for"
    palindrome = true
  else
    palindrome = false
  end
  i += 1
end
p palindrome

- Write a function that takes an array of words and returns an array containing only of palindromes.
 Note: Call the above function to check if a word is a palindrome.
 =>  Input: ["Malayalam", "tree", "boat", "civic", "melt", "level"]
     Output: ["Malayalam", "civic", "level"]
- Using the above function to find n!, write a function that takes two numbers, n & r as input and returns nCr.
 Note: nCr = n!/(((n-r)!)*(r!))
 =>  Input:  10, 5
     Output: 252
     Input: 21, 7
     Output: 116280
- Given the string pyramid below, find its sum.
 =>  Input: "1\n1 1\n1 2 1\n1 3 3 1\n1 4 6 4 1\n1 5 10 10 5 1\n1 6 15 20 15 6 1"
     Output: 127
- Given the square grid below and a number k (0 < k <= n), find the sum of numbers whose, x or y coordinate is equal to k.
 Explanation: It is the sum of 13, 18, 23, 28 and 33 from column 3, with that of
 =>  Input: "11 12 13 14 15\n16 17 18 19 20\n21 22 23 24 25\n26 27 28 29 30\n31 32 33 34 35"
     k = 3
     Output: 207
21, 22, 24, 25 from row 3.
Note: 23 not counted while counting along the rows since it was already counted
in the columns.
- Given a string that contains data about the calls you made last month and the
time you spoke in each call, return the telephone number of the person you spoke
to the longest.
 =>  Input: "9876543210 01:25:50,9836479923 01:30:45,8945671230 01:15:00,9876543210 00:07:30,8975638902 00:50:32"
     Output: "9876543210"
- Write a function that takes a number as input and prints the number in words. (Assume that the input is in the range 1 to 999,999,999; both inclusive)
 => print_number(235)
