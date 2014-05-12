#Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order. OK?Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!
def sort_array
  arr = []
  #Loop asking user for a word until user input is empty
  begin
    puts "Please give me a word."
    ans = gets.chomp
    arr << ans 
  end while ans != ''

  puts arr.sort
end
sort_array

#Try writing the above program without using the sort method. A large part of programming is solving problems, so get all the practice you can!

def sort_array2
  arr = []
  begin
    puts "Please give me a word."
    ans = gets.chomp
    arr << ans 
  end while ans != ''

  new_arr = []
  n = arr.length
  for i in 1..n
    new_arr << arr.min
    arr.delete(arr.min)
  end
  puts new_arr
end
sort_array2


#Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out the information from the array in a beautifully formatted Table of Contents.

def justify_again
  content = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 72', 'Chapter 3: Variables', 'page 118']
  lineWidth = 40
  puts (content[0].center(lineWidth))
  puts (content[1].ljust(lineWidth/2) + content[2].rjust(lineWidth/2))
  puts (content[3].ljust(lineWidth/2) + content[4].rjust(lineWidth/2))
  puts (content[5].ljust(lineWidth/2) + content[6].rjust(lineWidth/2))
end
justify_again
