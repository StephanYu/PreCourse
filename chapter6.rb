#"99 bottles of beer on the wall..." Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."
def beer_bottles
  count = 99
  while count > 0
    puts "#{count} bottles of beer on the wall."
    count -= 1
  end
end
beer_bottles

#Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals)If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. (This part is optional, and would be much easier if you read the section on Ruby's random number generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
#Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
#Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while loop.

def deaf_grandma
  puts "Say something to grandma!"
  your_response = gets.chomp
  
  while your_response != your_response.upcase
    puts "HUH?! SPEAK UP SONNY!"
    your_response = gets.chomp
  end
  
  puts "NO, NOT SINCE #{rand(1930..1951)}"
end
deaf_grandma

#Extend your Deaf Grandma program: What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.

def deaf_grandma2
  puts "Say something to grandma!"
  your_response = gets.chomp
  
  while your_response != your_response.upcase
    puts "HUH?! SPEAK UP SONNY!"
    your_response = gets.chomp
  end
  
  while your_response != "BYE BYE BYE"
    puts "NO, NOT SINCE #{rand(1930..1951)}"
    your_response = gets.chomp
  end
  
    puts "Okay, you can go then. Don't miss me if I am dead."
end
deaf_grandma2



#Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, but not as confusing has having July in the middle of the winter, which is what would eventually happen.)

def leap_year
#ask for starting year
puts "What is the starting year?"
start_year = gets.chomp.to_i

#ask for ending year
puts "What is the ending year?"
end_year = gets.chomp.to_i

#loop through array of years from start_year to end_year and select leap years based on given conditions
leap_arr = []

(start_year..end_year).select do |leap|  
  leap_arr = leap % 4 == 0 || leap % 400 == 0
end
end
leap_year




