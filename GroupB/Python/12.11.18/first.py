'''
#######################################
for i in range(0, 4):
    if i == 2:
        continue
    print(i)
print("Finished with i = ", str(i))
######################################
phrase = "it marks the spot"
for letter in phrase:
    if letter == "X":
        break
else:
    print("There was no 'X' in the phrase")
    
######################################

tries = 0
while tries < 3:
    password = input("Password: ")
    if password == "12345":
        break
    else:
        tries = tries + 1
else:
    print("Suspicious activity. The authorities have been alerted.")
 

#############################################
num = int(input("Enter a number "))
num = num + 45


###########################################

nun = int("fgfgfg")

#################################################
try:
    number = int(input("Enter an integer: "))
except ValueError:
    print("That was not an integer.")
    
################################################    
#number = int(input("Enter an integer: "))


############################################
try:
    number = int(input("Enter an non-zero integer: "))
    print("10 / {} = {}".format(number, 10.0/number))
except ValueError:
    print("You did not enter an integer.")
except ZeroDivisionError:
    print("You cannot enter 0.")
print("Program still going ")


# Ask the user to enter an integer.
# Repeat the process if the user hasn't entered an integer.
repeat = True
while repeat == True:
    try:
        num = input(" Type a Integer :")
        print(int(num))
        repeat = False
    except ValueError:
              print("Try Again")
'''
###################
while True:
    try:
        num = input(" Type a Integer :")
        print(int(num))
        break
    except ValueError:
              print("Try Again")

####################
