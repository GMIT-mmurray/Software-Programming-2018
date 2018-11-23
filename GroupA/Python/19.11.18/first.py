colors = ["red", "green", "burnt sienna", "blue"]
scores = [10, 8, 9, -2, 9]
my_list = ["one", 2, 3.0]
print(colors[:])
colors[0] = "yellow"
print(colors)
my_list.append([3.5,"Extra"])
scores.append(45)
print(my_list[3][1])
print(scores)
my_list.remove("one")
print(my_list)
scores.extend([3,6,77,876,44,333,2222,111,4])
print(scores)
scores.sort()
print(scores)
print(colors.index("green"))
my_new_list = colors[2:4]
my_new_list.append("white")
print(my_new_list)
colors.sort();
print(colors)
two_by_two = [[1, 2, 3], [4, 5, 6]]
print(two_by_two[1][1])
groceries = "eggs: spam: pop rocks: cheese: 6"
grocery_list = groceries.split(": ")
print(grocery_list)

