#Write an Angry Boss program. It should rudely ask what you want. Whatever you answer, the Angry Boss should yell it back to you, and then fire you. For example, if you type in I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

def angry_boss
  puts "WHADDAYA WANT??"
  my_answer = gets.chomp
  puts "WHADDAYA MEAN \"#{my_answer.upcase}.\"?!? YOU ARE FIRED!"
end
angry_boss

#So here's something for you to do in order to play around more with  center, ljust, and rjust: Write a program which will display a Table of Contents so that it looks like this:

def justify
  lineWidth = 40
  puts ("Table of Contents".center(lineWidth))
  puts ("Chapter 1:  Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2))
  puts ("Chapter 2:  Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2))
  puts ("Chapter 3:  Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2))
end
justify
