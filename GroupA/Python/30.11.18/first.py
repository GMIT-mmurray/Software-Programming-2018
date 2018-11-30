while True:
    try:
        num = input("Type comma seperated numbers:")
        alist = num.split(",")
        for value in alist:
            i = int(value) # will create an except if a sring
        t = tuple(alist)
        print(alist)
        print(t)
        break
    except:
        print("Numbers Only : ")
print("program ends")