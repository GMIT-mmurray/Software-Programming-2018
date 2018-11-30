'''
Page 80
Write a script that prompts the user to enter a word using the input() function,
stores that input in a variable, and then displays whether the length of that string is
less than 5 characters, greater than 5 characters, or equal to 5 characters by using
a set of if , elif and else statements.
'''


# Display whether the length of user input is <, > or = 5 characters
my_input = input("Type something: ")

if len(my_input) < 5:
    print("Your input is less than 5 characters long.")
elif len(my_input) > 5:
    print("Your input is greater than 5 characters long.")
else:
    print("Your input is 5 characters long.")
