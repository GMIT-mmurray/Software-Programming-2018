while True:
    try:
        num = input(" Enter a list of comma seperated number :")
        alist = num.split(",")
        for value in alist:
            i=int(value)
        t=tuple(alist)
        print(alist)
        print(t)
    except :
        print("Try Again")
