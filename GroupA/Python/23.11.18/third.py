# Create an empty dictionary
birthdays = {}

# Add some key-value pairs to the dictionary
birthdays["Luke Skywalker"] = "5/25/19"
birthdays["Obi-Wan Kenobi"] = "3/11/57"
birthdays["Darth Vader"]    = "4/1/41"
#birthdays = dict([("Luke Skywalker", "5/25/19"),
#                  ("Obi-Wan Kenobi", "3/11/57"),
#                  ("Darth Vader", "4/1/41")])


# Check if "Yoda" and "Darth Vader exist; if not, add them
if "Yoda" not in birthdays:
    birthdays["Yoda"] = "unknown"
if "Darth Vader" not in birthdays:
    birthdays["Darth Vader"] = "unknown"
print(birthdays)

#------------------------------------------------    
# for name in ["Yoda", "Darth Vader"]:
#    if name not in birthdays:
#        birthdays[name] = "unknown"
#------------------------------------------------

# Display the contents of the dictionary, one pair at a time
for name in birthdays:
    print(name, birthdays[name])
    
del(birthdays["Darth Vader"])
print(birthdays)
