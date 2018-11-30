evenList = []
oddList  = []
try:
    tp = input("Enter numbers ")
    alist = tp.split(",")
    for x in alist:
        if x.isdigit() == True:
            if int(x) % 2 == 0:
                evenList.append(x)
            else:
                oddList.append(x)
 
    print("Even List {}".format(tuple(evenList)))
    print("Odd List  {}".format(tuple(oddList)))
except:
    print("something happened")