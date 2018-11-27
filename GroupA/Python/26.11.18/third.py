my_input_file = open("C:/Temp/example.txt", "r")
for line in my_input_file.readlines():
    # Replace automatic line break at end of line;
    # file already contains newline characters
    print(line,end="")
my_input_file.close()

import os
my_path = "C:/Temp"
input_file_name = os.path.join(my_path, "example.txt")
with open(input_file_name, "r") as my_input_file:
    for line in my_input_file.readlines():
        print(line,ends=""),