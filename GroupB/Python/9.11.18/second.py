"""
Page 60 Question 3
Write a function called doubles() that takes one number as its input and doubles
that number three times using a loop, displaying each result on a separate line; test
your function by calling doubles(2) to display 4, 8, and 16
"""
def doubles(num):
    ''' Return the result of multiplying an input number by 2 '''
    return num * 2

# Call doubles to double the number 2 three times
my_num = 4
for i in range(0, 3):
    my_num = doubles(my_num)
    print(my_num)