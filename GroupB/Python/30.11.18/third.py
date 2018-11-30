'''
digits = 0;
letters = 0;
st = input("Enter letters and numbers ..")
for char in st:
    if char.isdigit():
        digits += 1
    elif char.isalpha():
        letters += 1
print("Letter   {}".format(letters))
print("Numbers  {}".format(digits))
'''
var = False
di = {"Letters":0,"Digits":0, "Non":0}
st = input("Enter letters and numbers ..")
for char in st:
    if char.isdigit():
        di["Digits"] += 1
    elif char.isalpha():
        di["Letters"] += 1
    else:
        di["Non"] += 1
        if var == True:
            print("Not a Digit or a letter")
            var = False
            
print("Letter   {}".format(di["Letters"]))
print("Numbers  {}".format(di["Digits"]))
print("Non      {}".format(di["Non"]))