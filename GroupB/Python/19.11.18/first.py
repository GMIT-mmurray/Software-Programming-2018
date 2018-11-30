colors = ["red", "green", "burnt sienna", "blue",5]
print(colors[2])
print(colors[4])
print(colors)
print(colors[4:5])
print(colors[:2])
colors[0] = "blue"
print(colors)
colors[0] = "4f"
print(colors)
colors.append("amber")
print(colors)
colors.remove("blue")
print(colors)
colors.extend([4,5,6,"white"])
print(colors)
print(colors.index("white"))
c = colors[2:7]
print(c)
c.append("black")
print(c)
print(colors)
num = [2,6,1,899,64]
num.sort()
print (num)
num.reverse()
print(num)
two_by_two = [[1, 2], [3, 4]]
print(two_by_two[1][1])
groceries = "eggs: spam: pop rocks: cheese"
grocery_list = groceries.split(": ")
print(grocery_list)



