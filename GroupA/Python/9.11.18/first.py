'''
n = 1
while (n < 5):
    print("n =", n)
    n = n+1
print("Loop finished")

##############################

for n in range(1, 5):
    print("n =", n)
print("Loop finished")

##############################
for n in range(1, 4):
    for j in range(0,4):
        print("n =", n, "and j =", j)
        for k in range(2,4):
            print("n =", n, "and j =", j, "and k ", k)
##############################
'''
#Page 60 Question 3
def doubles(num):
    ''' Returns the result of multiplying an input number by 2  '''
    return num * 2

num = 2
for i in range(0,4):
    num = doubles(num)
    print(num)
