#Introduction to Programming Exercises

#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|num| puts num}

#Same as above, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|num| puts num if num > 5}

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = arr.select {|num| num.odd?}

#Append "11" to the end of the original array. Prepend "0" to the beginning.

arr.push(11)

#Get rid of "11". And append a "3".
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11)
arr.pop
arr.push(3)

#Get rid of duplicates without specifically removing any one value.
arr.uniq

#What's the major difference between an Array and a Hash?
arrays are index based ordered lists and hashes are lists made up of key-value pairs without a specific order. 
#Create a Hash using both Ruby syntax styles.
h1 = {:a => 1, :b => 2}
h2 = {a: 1, b: 2}

#Suppose you have a hash h = {a:1, b:2, c:3, d:4}

#1. Get the value of key `:b`.

h[:b]

#2. Add to this hash the key:value pair `{e:5}`

h[:e] = 5

#3. Remove all key:value pairs whose value is less than 3.5

h.delete_if {|k, v| v < 3.5 }

#Can hash values be arrays? Can you have an array of hashes? (give examples)
yes.
arr = [1, 2, {:a => 1}]
h = {:a => 1, [1, 2, 3]}

#Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
contacts["Joe Smith"][:email]
contacts["Sally  Johnson"][:phone]

#Create the data structure that you created in the previous example for Joe Smith using loops instead of assignment. Some helpful methods might be the Array shift and first method.
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
#arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr.delete_if {|e| e.start_with? ("s")}
arr.delete_if {|e| e.start_with? ("s", "w")}


#Take the following array:
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees'] 
b = Array.new
b = a.map {|word| word.split(' ')}
b.flatten


#What will the following program output?

#hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
#hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

#if hash1 == hash2
  #puts "These hashes are the same!"
#else
  #puts "These hashes are not the same!"
#end


these hashes are the same






