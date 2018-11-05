def convert_cel_to_far(cel_temp):
    far_temp = cel_temp * 9 / 5 + 32
    return far_temp

def convert_far_to_cel(far_temp):
    cel_temp = (far_temp - 32) * 5 / 9
    return cel_temp

temp1 = input("Enter Far :")
print("{} degrees Far = {} degrees C".format(temp1,convert_far_to_cel(int(temp1))))
print(f"{temp1} degrees Far = {convert_far_to_cel(int(temp1))} degrees C")

temp2 = input("Enter Cel :")
print("{} degrees Far = {} degrees C".format(temp1,convert_cel_to_far(int(temp2))))
print(f"{temp2} degrees Far = {convert_cel_to_far(int(temp2))} degrees C")