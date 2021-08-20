# address = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# p address #this how you print
# p address[5]
# new_address = address.reverse!
# p new_address

# puts "Hello World" #put string
# p "Hello World" #print
# print "Hello World\n" #print brdo

#The difference between print and puts en puts bet generate new line bs

# greeting = "Hello World"
# puts greeting

# def sayHello(thingsToSay)
#     puts thingsToSay
# end
#msh me7tag aktebha w a5erha ()

# sayHello("7assaaaaan")


###########STRINGS##################
#string mmkn yeb2a "" aw ''
# with '' can't use string interpolation
# with "" you can

#String Concatenation#
# firstName = "Marc"
# lastName = "Medhat"
# puts firstName + " " + lastName

#String Interpolation#
# puts "My first name is #{ firstName } and my last name is #{ lastName }"
# puts "First name: #{ firstName } \nLast name: #{ lastName }"

#Interactive Ruby#
# type in the shell: irb
# --> firstName = "Marc"
# --> lastName = "Medhat"
# --> firstName + " " + lastName  --> rhis will print the string concatenation in the irb

#Methods and how do we find them#
# puts firstName.class          -> this will print String (the type of firstName)
# puts firstName.methods        -> this will bring up all the methods i can use for string

# sentence = "welcome to the jungle"
# puts sentence
# newSentence = sentence.sub("the jungle", "utopia")
# puts newSentence

#Escape#
#\

#Input from user#
# puts "What is your first name ?"
# firstName = gets.chomp
# puts "Okay, your first name is #{firstName}"

# puts "Please enter a number"
# number = gets.chomp
# puts number.to_i * 2

#WORKING WITH NUMBERS#
# puts 10/4 # dyh hatala3 2 3ashan bte3mel neglect lel decimal
# puts 10/4.0 # dyh keda hatala3 2.5 3ady
# puts 10/4.to_f # dyh brdo hatala3 2.5 3ady
# puts "5" * 2 # hena dh haye3mel string concatination w haye3mel duplication l string "5" w hayeb2a "55"
# puts 2 * "5" dyh b2a hatedrab error w msh hateshta3'al
# 20.times {
#     print "-"
# }
# if you tried to convert an unconvertable string to integer it will give you 0

# puts 5 && 4


#ARRAYS#

# arr = %w(my name is marc medhat roushdy and i love ruby programming language)

# way 1
# for str in arr
#     print str + " "
# end

# way 2
# arr.each do |str|
#     print str + " "
# end

# way 3
# arr.each{ |str| print str + " " }

# nums = (1..10).to_a
# nums.each { |num| print num }
# new_nums = nums.select{ |num| num.odd? }  #gets only the odd numbers
# p new_nums

# p nums.find_index(2)


#ARRAY EXERCISES:
##ONE##
# Write a Ruby program to check whether a value exists in an array
# colors = ["Red", "Green", "Blue", "White"]

# def is_in_array(colors, str)
#     return colors.include?(str)
# end

# puts is_in_array(colors, "Blue")

##TWO##
# Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more
# def is_first_or_last(nums)
#     if nums.include?(7)
#         if nums.find_index(7) == 0 || nums.find_index(7) == nums.length - 1
#             return true 
#         end
#     end

#     return false
# end

# def check_array(nums)
#     return (nums[0] == 7 || nums[nums.length-1] == 7)
#  end

# puts check_array([1,2,3,4,5])

##THREE##
#Write a Ruby program to pick number of random elements from a given array
# def pick_random_numbers(nums)
#     return nums.sample(5)
# end

# puts pick_random_numbers([1, 2, 1, 2, 5])

##FOUR##
# Write a Ruby program to remove duplicate elements from a given array
# def remove_duplicate_elements(nums)
#     return nums.uniq
# end

# nums = [1, 2, 1, 2, 5]
# puts remove_duplicate_elements(nums)

##FIVE##
# Write a Ruby program to remove blank elements from a given array.
# def remove_blank_elements(colors)
#     return colors.reject {
#         |color| color.empty?
#     }
# end

# new_colors = remove_blank_elements(["Red", "Green", "", "Blue", "White"])
# puts new_colors


##FIVE##
# Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more
# def sum_of_elements_in_array(nums)
#     sum = 0
#     nums.each {
#         |num| sum += num
#     }

#     return sum
# end

# result = sum_of_elements_in_array([1, 1, 1, 1, 1, 1])
# puts result


##SIX##
# Write a Ruby program to split a delimited string into an array.
# def  split_delimited_string(str)
#     return str.split(",")
# end

# result = split_delimited_string("Red, Green, Blue, White1, 3, 4, 5, 7")
# print result 


##HASHES##
# sample_hash = {a: 1, b: 2, c: 3}
# puts sample_hash[:a]
# sample_hash.each do |key, value|
#     puts "the class for key is #{key.class} and the class for value is #{value.class}"
# end

# puts "Marc".downcase


# loop do
#   puts "my name is marc"
#   #infinite loop
# end

# returns -1 if <
# returns 0 if =
# returns 1 if >
# puts 5 <=> 4