'''
for i in range(0, 4):
    if i == 2:
        continue 
    print(i)
print("Finished with i = ", str(i))
######################################################
phrase = "it marks the spotX"
for letter in phrase:
    if letter == "X":
        break
else:
    print("There was no 'X' in the phrase")
###################################################    

tries = 0
while tries < 3:
    password = input("Password: ")
    if password == "12345":
        break
    else:
        tries = tries + 1
else:
    print("Suspicious activity. The authorities have been alerted.")

try:
    number = int(input("Enter an integer: "))
except ValueError:
    print("That was not an integer.")
print("Program is running")

try:
    number = int(input("Enter an non-zero integer: "))
    print("10 / {} = {}".format(number, 10.0/number))
except ValueError:
    print("You did not enter an integer.")
except ZeroDivisionError:
    print("You cannot enter 0.")

try:
    number = int(input("Enter an non-zero integer: "))
    print("10 / {} = {}".format(number, 10.0/number))
except (ValueError, ZeroDivisionError):
    print("something wrong")
'''    
try:
    number = int(input("Enter an non-zero integer: "))
    print("10 / {} = {}".format(number, 10.0/number))
except :
    print("something wrong")
