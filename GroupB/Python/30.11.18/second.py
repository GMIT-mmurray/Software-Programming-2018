var = True
while var == True:
    num = input(" Enter a list of comma seperated words :")
    alist = num.split(",")
    for value in alist:
        if value.isdigit() == True:
            print("Words Only")
            break
    else:
        alist.sort()
        t=tuple(alist)
        print(t)
        print(alist)
        var = False
print("End...")
    
