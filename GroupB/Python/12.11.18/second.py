'''
from random import randint
heads = 0
tails = 0
for trial in range(0, 20000):
    while randint(0, 1) == 0:
        tails = tails + 1
    heads = heads + 1


print("{} heads {} tails {} h/d= ".format(heads,tails, heads/tails))

##########################################
from random import randint
# Simulate the toss of a die
print(randint(1, 6))
####################################
'''
from random import randint
trials = 10000
total = 0
for trial in range(0,trials):
    total = total + randint(1,6)
avg_result = total/trials
print (" The average result of {} throws was {}".format(trials,avg_result))