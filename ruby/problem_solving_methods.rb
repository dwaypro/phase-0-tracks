# add the sum of two integers within an array to the previous integer. 
# Push the result into the array 
# untill array.length == x


def fib_method(number)

counter = 0
fib_array = [0,1]

#create a loop that breaks down the array into its parts
until counter == number
# if counter is at zero do nothing.

if counter == 0 
# else not at zero subtract from fib_array index current counter -1
# add too fib_array index counter
# store the sum of those two numbers into a result variable

else
	result = fib_array[counter-1] + fib_array[counter]
    fib_array << result
end

# add to counter to get to the end of the fib_array loop
counter += 1 
end  

#strip the last index of the array 
fib_array.delete_at(-1)
p fib_array

end

#define user interface for fibanaci
puts "What's your fib number?"
number = gets.chomp.to_i
fib_method(number)






# declare array to be used in method
arr = [10, 30, 60, 70]


# declare search array method
def search_array(a, b)

#flag will be used to tell the program to print "nill"
flag = false

# get the length of the array in order to set a loop
arr_end = a.length

# create a variable and set to zero. will be used to loop till a.length
counter = 0 

until counter == arr_end 

# position is essentially the index at the length array - counter
position = arr_end - counter

# If the array value at a position value is equivalent to user input
# print the position and set the flag = to true so not to print nill

if a[position] == b 
p position
flag = true

# if the value at position zero is equal to user input 
# print zero, flag true and break the loop
elsif a[0] == b
p 0
flag = true
break

else


end
# add to the counter 1

counter += 1 

end

# Print nill if the user input is not equal to an item in the array
if flag == false 
p "nil"

else
	end


end

# declare user interface
puts "enter a value... now:"
response = gets.chomp.to_i
search_array(arr, response)



# declare list

master_array = [1,2,3,5,4,7,8,9,100,51]

# method for sorting smallest to largest

def sort(master_array, sorted_array = [])
 return sorted_array unless master_array.length > 0

# get the min of the array 
 smallest = master_array.min

 # add to the array if array item is smallest
 master_array.each {|e| sorted_array << e if e == smallest}


 # remove from the array the old 
 master_array.delete(smallest)
 sort(master_array, sorted_array)
end


p sort master_array
