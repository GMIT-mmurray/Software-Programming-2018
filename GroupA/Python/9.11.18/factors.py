num = int(input("Enter a Number : "))
for divisor in range (1,num+1):
    if num % divisor == 0:
        print("{0:4} is a divisor of {0:6}".format(divisor,num))