####################
# String
####################

# length doesn't have an argument and returns an integer
# returns the length of the string (number of characters) in the quotes
puts "Hello world".length # => 11

# strip: no argument, returns a new string
# removes any leading or trailing whitespaces
puts "\n    Hello world            ".strip # => Hello world

# split: takes in a string as an argument and can set a limit/conditions
# returns the original into an array of strings
print "now's the        time".split # => ["now's", "the", "time"]
print "split".split("") # => ["s", "p", "l", "i", "t"]

# start_with?() takes in one or more argument and check if the string it was called on contains them
# returns a boolean
puts "\n#{"hello".start_with?("bell")}" # => false
puts "#{"hello".start_with?("h")}" # => true

####################
# Array
####################

# first: it can take in an argument
# returns the first element of an array if there's no argument, otherwise returns up to that "argument"
array = ["a", "b", "c", "d", "e", "f", "g"]
puts "#{array.first}" # => a
puts "#{array.first(5)}" # => ["a", "b", "c", "d", "e"]

# delete_at(index): has an argument of "index"
# removes the element of the array at the specified index
puts "#{array.delete_at(3)}" # => ["a", "b", "c", "e", "f", "g"]
puts "#{array}" # => ["a", "b", "c", "e", "f", "g"]

# delete(obj): removes any element that is equivalent to the "obj"
puts "#{array.delete("a")}" # => a
puts "#{array}" # => ["b", "c", "e", "f", "g"]

# pop(n): removes the last element of an array if there's a "n", remove up to that n
puts "#{array.pop}"  # => g
puts "#{array.pop(3)}" # => ["c", "e", "f"]
puts "#{array}" # => ["b"]

####################
# Hash
####################

# to_a: takes in a hash object and turns it into a nested array with the key and value
hash1 = {a: 1, b: 2, c: 3}
puts "#{hash1.to_a}" # => [[:a, 1], [:b, 2], [:c, 3]]

# has_key?(key): checks if the hash object has the specified key and returns a boolean
puts "#{hash1.has_key?(:b)}" # => true
puts "#{hash1.has_key?(:e)}" # => false

#has_value?(value): similarily to has_key, checks if the value exists and return a boolean
puts "#{hash1.has_value?(3)}" # => true
puts "#{hash1.has_value?(10)}" # => false

####################
# Time
####################

# now: returns the current date/time
puts "#{Time.now}" # => 2018-07-19 13:55:13 -0400

####################
# File
####################

# exist?(file_name): pass in the file name and checks if the file exists
puts "#{File.exist?('ex1.rb')}" # => true, checks this local folder
puts "#{File.exist?('ex3.rb')}" # => false, checks this local folder

#extname(path): pass in a file extension and returns a string of the file type
puts "#{File.extname('ex1.rb')}" # => ".rb"