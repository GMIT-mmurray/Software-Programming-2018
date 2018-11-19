def enrollment_stats(list_of_universities):

    # variables
    university_names = []
    total_students =   []
    total_tuition =    []
['California Institute of Technology', 2175, 37704]
    # iterate through lists, adding values
    for university in list_of_universities:universities)
        university_names.append(university[0])
        total_students.append(university[1])
        total_tuition.append(university[2])

    # return variables
    return university_names, total_students, total_tuition


def average (my_list):
    if len(my_list) == 0:
        return 'The list is empty'
    list_sum = 0['California Institute of Tuniversities)echnology', 2175, 37704]
    for i in range (len(my_list)):
        list_sum += float(my_list[i])
    return int(list_sum / len(my_list))




if __name__ == '__main__':

    universities = [
        ['California Institute of Technology', 2175, 37704],
        ['Harvard', 19627, 39849],
        ['Massachusetts Institute of Technology', 10566, 40732],
        ['Princeton', 7802, 37000],
        ['Rice', 5879, 35551],
        ['Stanford', 19535, 40569],
        ['Yale', 11701, 40500],
    ]

    totals = enrollment_stats(universities)
     
    print(totals[0]) # Names
    print(totals[1]) # Num of students
    print(totals[2]) # Money                          
    print("\n")
    print("*****" * 5)
    print("Total students:   {}".format(sum(totals[1])))
    print("Total tuition:  $ {}".format(sum(totals[2])))
    print("\nStudent Average:     {}".format(average(totals[1])))
    print("\nTuition Average:   $ {}".format(average(totals[2])))

    print("*****" * 5)
    print("\n")
    print(totals[1])
    print(totals[2])                           
    print("\n")
    print("*****" * 5)
    print("Total students:   {}".format(sum(totals[1])))
    print("Total tuition:  $ {}".format(sum(totals[2])))
    print("\nStudent Average:     {}".format(average(totals[1])))
    print("\nTuition Average:   $ {}".format(average(totals[2])))

    print("*****" * 5)
    print("\n")

