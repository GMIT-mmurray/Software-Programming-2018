'''
if 2 + 2 == 5:
#   True    
    print("2 and 2 is 5")
    print("Arithmetic works.")
else:
#   False    
    print("2 and 2 is not 5")
    print("Big Brother wins.")
 ####################################

num = 10
if num < 10:
    print("number is less than 10")
elif num > 10:
    print("number is greater than 10")
else:
    print("number is equal to 10")
######################################

if 1 < 2:
    print("1 is less than 2")
elif 3 < 4:
    print("3 is less than 4")
else:
    print("Who moved my cheese?")
######################################
 
    
want_cake = "no"
have_cake = "yes"
if want_cake == "yes":
    print("We want cake...")
    if have_cake == "no":
        print("But we don't have any cake")
    elif have_cake == "yes":
        print("And it's our lucky day")
else:
    print("The cake is a lie.")    
 '''
######################################

# Question 1 Page 80
# Display whether the length of user input is <, > or = 5 characters
text = input(" Enter Some String ")
if len(text) < 5:
    print(" Its less than 5")
elif len(text) > 5:
    print(" Its greater than 5")
else:
    print(" Its 5")
    





