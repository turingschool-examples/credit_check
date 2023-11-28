card_number = "5541808923795240"

# Your Luhn Algorithm Here

    #Pseudo Code:

    #1.) Double every other digit
    #turn given string into an array of single string elements
    #iterate through that array to turn each element into an integer 
    #OR
    #turn given string into an integer 
    #turn integer into an array of each digit being it's own element

    #iterate through the array using .each_with_index to obtain the number and it's index
    #multiply the number by 2 if the index's position is an even number 

    #2.) If element is greater than 9, sum the digits of that element
    #iterate through the array from the first step 
    #create a conditional for if the element is < 9, keep that element
    #else, if the element is > 9, sum the digits of that element
    #return as a new array 

    #3.) Take the sum of all the digits 
    #use the .sum enumerable on the array from the last step

    #4.) If the sum is divisible by ten, the number is valid
    #check to see if the sum from the last step is a multiple of ten using modulo operator (%)
    #if so, return the valid output string - if not, return the invalid output string



# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"