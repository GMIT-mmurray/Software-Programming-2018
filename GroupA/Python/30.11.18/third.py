DIR={"numbers":0,"letters":0,"non":0}
try:
    st = input("Enter Numbers and Letters ")
    for char in st:
        if char.isdigit() == True:
            DIR["numbers"] += 1
        elif char.isalpha() == True:
            DIR["letters"] += 1
        else:
            DIR["non"] += 1
    print("Numbers = {}".format(DIR["numbers"]))
    print("Letters = {}".format(DIR["letters"]))
    print("NON     = {}".format(DIR["non"]))
except:
     print("Error")