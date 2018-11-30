'''
my_output_file = open("hello.txt", "a")
my_output_file.writelines("This is my 1 file.\n")
my_output_file.writelines("This is my 2 file.\n")
my_output_file.writelines("This is my 3 file.\n")
my_output_file.writelines("This is my 4 file.\n")
my_output_file.close()
'''

my_output_file = open("hello.txt", "w")
lines_to_write = ["This is my file.", "\n There are many like it,",
"\nbut this one is mine."]
my_output_file.writelines(lines_to_write)
my_output_file.close()

my_input_file = open("hello.txt", "r")
print(my_input_file.readlines())
my_input_file.close()

my_input_file = open("hello.txt", "r")
for line in my_input_file.readlines():
    print(line,end=""),
my_input_file.close()
print("\n")

my_input_file = open("hello.txt", "r")
line = my_input_file.readline()
while line != "":
    print(line,end=""),
    line = my_input_file.readline()
my_input_file.close()
print("\n")

with open("hello.txt", "r") as my_input_file:
    for line in my_input_file.readlines():
        print(line,end="")
        
with open("hello.txt", "r") as my_input, open("hi.txt", "w") as my_output:
    for line in my_input.readlines():
        my_output.write(line)