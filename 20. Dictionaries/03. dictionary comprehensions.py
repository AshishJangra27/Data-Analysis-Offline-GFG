dct = {i:i**3 for i in range(1,6)}
print(dct)
print('-'*30)

# Dictionaries with Conditions
dct = {i:i**2 for i in range(1,11) if i%2 == 0}
print(dct)
print('-'*30)

# Dictionaries from Lists
lst = ['Apple','Banana','Grapes']
dct = {item : len(item) for item in lst}
print(lst)
print(dct)
dct = {len(item) : item for item in lst}
print(dct)
print('-'*30)

# Special Keys with Strings
dct = {'num_' + str(i) : i for i in range(1,11)}
print(dct)
print('-'*30)

# Shorlisting based on values
dct = {'num_' + str(i) : i for i in range(1,11) }
dct = {k:v for k,v in dct.items() if v%3 == 0}
print(dct)
print('-'*30)


matrix = [[1,2,3],[4,5,6],[7,8,9]]
final_dct = {(i,j) : matrix[i][j] for i in range(3) for j in range(3)}
print(final_dct)
print('-'*30)

final_dct = {matrix[i][j] : (i,j) for i in range(3) for j in range(3)}
print(final_dct)
