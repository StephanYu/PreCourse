#Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

def whats_my_name
  puts "What's your first name?"
  first_name = gets.chomp
  puts "What is your middle name?"
  middle_name = gets.chomp
  puts "And what is your last name?"
  last_name = gets.chomp

  puts "Hello, " + first_name + " " + middle_name + " " + last_name
end
whats_my_name


#Write a program which asks for a person's favorite number. Have your program add one to the number, then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)

def fav_num
  puts "What is your favourite number?"
  num = gets.chomp
  puts "May I suggest that " + num.next + " is a bigger and better number?"
end
fav_num
