repeat = True
try:
    while repeat == True:
        words = input("Type comma seperated words:")
        alist = words.split(",")
        for value in alist:
            if value.isdigit() == True:
                print("words only")
                break
        else:
            alist.sort()
            print(alist)
            repeat = False
except:
    print("Error")
   
print("program ends")