from csv import reader

# with open('StatisticalAreas.csv') as csv_file:
#     csv_reader = reader(csv_file, delimiter=',')
#     strings = []
#     for index, row in enumerate(csv_reader):
#         for i, item in enumerate(row):
#             if (i==1):
#                 strings.append(len(item))
#                 break
        
#     print(max(strings))

### Check missing values ###

# insert into open any file you want to check

with open('covid19_nsw_testsites_simulated_capacity.csv') as csv_file:
    csv_reader = reader(csv_file, delimiter=',')
    strings = []
    for index, row in enumerate(csv_reader):
        if index == 0:
            continue

        for i, item in enumerate(row):
            if (i==3):
                # print(row)
                strings.append(len(item))
            # if (item == '' or item is None):
            #     print(row)
            #     print(i)
        
    print(sorted(strings))


# with open('Neighbourhoods.csv') as csv_file:
#     csv_reader = reader(csv_file, delimiter=',')
#     strings = []
#     data_type = None
#     for index, row in enumerate(csv_reader):
#         if index == 0:
#             continue
#         data_type = type(row[3])
#         print(data_type)

#         for i, item in enumerate(row):
#             if i == 3:
#                 if data_type != type(item):
#                     print(type(item))

            # if (i==3 and ):
            #     print(row)
            #     strings.append(int(item))
            # if (item == '' or item is None):
            #     print(row)
            #     print(i)