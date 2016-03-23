- Write function that translates a text to Pig Latin and back. English is translated to Pig Latin by taking the first letter of every word, moving it to the end of the word and adding ‘ay’.
=> “The quick brown fox” becomes “Hetay uickqay rownbay oxfay”.

def pigLatin(sentence)
words = sentence.split(' ')
pigLatin = words.map do |word|
  chars =  word.split('')
  firstChar = chars.shift
  (chars + [firstChar] + ["ay"]).join('')
  end.join(' ').capitalize
end

puts "Please enter a sentence..."
text = gets.chomp.downcase
p pigLatin(text)

- Given a number n, print all numbers upto n that are divisible by 2 but not by 6.
 => For 100, the output would be 2, 4, 8 ........ 98, 100.

def uptoNBY2Not6(n)
  (1..n).to_a.each do |number|
    puts number if (number%2 == 0) && (number%6 != 0)
  end
end
puts "Please enter a number..."
number = gets.chomp.to_i
uptoNBY2Not6(number)

- Write a function that takes 2 numbers, a and b as arguments and prints all the numbers less than 1000 that are multiples of a, but not of b.

def multiplesOfAB(a, b)
  (1..1000).to_a.each do |number|
    puts number if (number%a == 0) && (number%b != 0)
  end
end
puts "Please enter first number..."
a = gets.chomp.to_i
puts "Please enter second number..."
b = gets.chomp.to_i
multiplesOfAB(a, b)

- Given a user input number n, print the sum of numbers which less than n that are either divisible by 3 or 5.
 => Input: n = 26; Output: 168

 def threeByFiveUptoN(n)
   sum = 0
   (1..n).each do |number|
     sum += number if (number % 3 == 0) || (number % 5 == 0)
   end
   sum
 end
 def threeByFiveUptoN(number)
   sum = 0
   n = 0
   while  n < number
     if (n%3 == 0) || (n%5 == 0)
       sum = sum + n
       puts sum
     end
      n += 1
    end
 # end
 puts "Please enter a number..."
 number = gets.chomp.to_i
 p threeByFiveUptoN(number)

- Given a string find the number of occurrences of the alphabet 'i' in the string.
 => Input: "It is the imperfections that make things beautiful."; Output: 6

def occurances(char, string)
  string.count char
end
puts "Please enter string..."
string = gets.chomp.downcase
p occurances("i", string)
