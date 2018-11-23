phonebook = {"Jenny": "867-5309", "Mike Jones": "281-330-8004", "Adam": "999-9999", "Destiny": "900-783-3369"}
print(phonebook["Mike Jones"])
phonebook["Obama"] = "202-456-1414"
phonebook["Jenny"] = "555-0199"
del(phonebook["Destiny"])
print(phonebook)
names= list(phonebook.keys())
print(names)

for contact_name in phonebook:
    print(contact_name, phonebook[contact_name])

if "Santa" in phonebook:
    print("Yes")
else:
    print("No")
    
for contact_name in sorted(phonebook):
    print(contact_name, phonebook[contact_name])    