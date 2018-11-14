
'''
Write a script that repeatedly asks the user to input an integer, displaying a
message to "try again" by catching the ValueError that is raised if the user did not
enter an integer; once the user enters an integer, the program should display the
number back to the user and end without crashingWrite a script that repeatedly asks the user to input an integer, displaying a
message to "try again" by catching the ValueError that is raised if the user did not
enter an integer; once the user enters an integer, the program should display the
number back to the user and end without crashing

while True:
    try:
        num = input("Typr an Integer :")
        print(int(num))
        break
    except:
        print("Try again : ")
print("program continues")

#############################################
repeat = True
while repeat == True:
    try:
        num = input("Typr an Integer :")
        print(int(num))
        repeat = False
    except:
        print("Try again : ")
print("program continues")
###############################################


from random import randint

heads = 0
tails = 0
for trial in range(0, 10000):
    while randint(0, 1) == 0:
        tails = tails + 1
    heads = heads + 1
print("{} heads {} tails  h/d= {} ".format(heads,tails, heads/tails))
'''
# Write a script that simulates 10,000 throws of dice and displays the average number
# resulting from these tosses.

from random import randint
trials = 10000
total = 0
for trial in range (0,trials):
    total = total + randint(1,6)
avg_value = total/trials
print ("The average Value of {} throws was {}".format(trials, avg_value))

