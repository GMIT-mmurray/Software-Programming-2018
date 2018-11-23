phonebook = {"Jenny": "867-5309", "Mike Jones": "281-330-8004","Destiny": "900-783-3369"}
print(phonebook["Jenny"])
phonebook["Obama"] = "202-456-1414"
print(phonebook)
phonebook["Jenny"] = "999-9999"
print(phonebook)
del(phonebook["Jenny"])
print(phonebook)
print(phonebook.keys())
names = list(phonebook.keys())
print(names)

for contact_name in phonebook:
    print(contact_name, phonebook[contact_name])
    
if "Santa" not in phonebook:
    print("no")
else:
    print("yes")
    
for contact_name in sorted(phonebook):
    print(contact_name, phonebook[contact_name])