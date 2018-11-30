aEvenlist = []
aOddlist  = []
numbers = input("Comma seperated Numbers please ...")
alist = numbers.split(",")
for x in alist:
    if x.isdigit()==True:
        print(x)
        if int(x) % 2 == 0:
            aEvenlist.append(x)
        else:
            aOddlist.append(x)

                        
print("Even Numbers :",tuple(aEvenlist))
print("Odd Numbers :",tuple(aOddlist))      
