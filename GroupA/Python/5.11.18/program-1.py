name = "Zaphod"
num_heads= 2  
num_arms = 3
print(name, "has", str(num_heads), "heads and", str(num_arms), "arms")
print(name, "has", num_heads, "heads and", num_arms, "arms")
print(name+" has "+str(num_heads)+" heads and "+str(num_arms)+" arms")
print("{} has {} heads and {} arms".format(name, num_heads, num_arms))
print("{0} has {1} heads and {2} arms".format(name, num_heads, num_arms))
print("{2} has {0} heads and {1} arms".format(name, num_heads, num_arms))
print("{name} has {num_heads} heads and {num_arms} arms".format(
name="Zaphod", num_heads=2, num_arms=3
))
print(f"{name} has {num_heads} heads and {num_heads+1} arms")