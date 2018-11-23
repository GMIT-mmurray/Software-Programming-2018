contacts = {"Jenny": {"cell": "555-0199", "home": "867-5309"}, "Mike Jones": {"home": "281-330-8004"}, "Destiny": {"work": "900-783-3369"}}
print(contacts["Jenny"]["cell"])
contacts["Jenny"]["cell"] = "111-1111"
print(contacts["Jenny"]["cell"])

simple_dict = dict(string1="value1", string2=2, string3=3.0)
print(simple_dict)