num = int(input("Enter a positive Number "))
for divisor in range (1, num+1):
    if num % divisor == 0:
        print("{0:6} is a divisor of {0:8} ".format(divisor,num))