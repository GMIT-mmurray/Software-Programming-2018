def square(number,power):    
    sqr_num = number ** power
    return sqr_num

input_num = input("Enter a number ")
power = input("Enter Power :")
print (f"The answer is : {square(int(input_num),int(power))}")
