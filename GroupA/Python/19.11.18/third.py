def enrollment_stats(list_of_universities):
    total_names    =[]
    total_students =[]
    total_fees     =[]
    
    for university in list_of_universities:
        total_names.append(university[0])
        total_students.append(university[1])
        total_fees.append(university[2])
        
    return total_names,total_students,total_fees

def average (my_list):
    if len(my_list) == 0:
        return "list is empty"
    list_sum = 0
    for i in range (len(my_list)):
        list_sum = list_sum + my_list[i]
    return int(list_sum / len(my_list))

universities = [
        ['California Institute of Technology', 2175, 37704],
        ['Harvard', 19627, 39849],
        ['Massachusetts Institute of Technology', 10566, 40732],
        ['Princeton', 7802, 37000],
        ['Rice', 5879, 35551],
        ['Stanford', 19535, 40569],
        ['Yale', 11701, 40500],
    ]print(" Avg Num student  :     {}".format(average(totals[1])))

totals = enrollment_stats(universities)
print(totals[0])
print(totals[1])
print(totals[2])
print(" Total students       :     {}".format(sum(totals[1])))
print(" Total Fees           :     {}".format(sum(totals[2])))
print(" Avg Num student      :     {}".format(average(totals[1])))
print(" Avg Fee per student  :     {}".format(average(totals[2])))
