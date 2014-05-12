#Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.

class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      'the tree is dead'
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'the tree is dead'
    end
  end

  def oneYearPasses
    if @alive
      @height += 0.4
      @orange_count = 0
    else
      'the tree is dead'
    end
  end

  def pick_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
      else
        "no oranges to pick"
      end
    else
      'the tree is dead'
    end
  end


end



#Write a program so that you can interact with your baby dragon. You should be able to enter commands like  feed and walk, and have those methods be called on your dragon. Of course, since what you are inputting are just strings, you will have to have some sort of method dispatch, where your program checks which string was entered, and then calls the appropriate method.

class Dragon
  def initialize name
    @name = name
  end

  def feed
    #something about feeding
  end

  def walk 
    #something about walking
  end
end

def baby_dragon
  puts 'What name will you give your dragon?'
  name = gets.chomp
  pet = Dragon.new name

  while true

    puts 'select from the following commands: exit, feed, walk'
    command = gets.chomp.downcase
    case command
    when 'exit'
      exit
    when 'feed'
      pet.feed
    when 'walk'
      pet.walk
    else
      puts 'I do not recognize this command. please select again'
    end

end
