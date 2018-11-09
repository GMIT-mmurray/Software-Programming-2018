for n in range(1, 4):
    print(">>>Outer Loop <<<<<<")
    for j in range(0, 6):
        print("Inner Loop")
        print("n =", n, "and j =", j)
        for k in range(0,2):
            print("Inner Inner Loop")
            print("n =", n, "and j =", j, "k = ", k)      
