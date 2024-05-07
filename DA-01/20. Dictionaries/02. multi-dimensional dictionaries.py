dct = { 1 : {'name' : 'Ashish', 'phone' : 123456789},
        2 : {'name' : 'Ankur', 'phone' : 127398127},
        3 : {'name' : 'Riya', 'phone' : 127398127}}

print(dct)
print('-'*50)

# Accessing the Elements
print(dct)
print(dct[1])
print(dct[3]['name'])
print('-'*50)

# Adding
print(dct)
dct[4] = {'name' : 'Prakash', 'phone' : 579834795}
print(dct)
print('-'*50)

# Updating
print(dct)
dct[3]['name'] = 'Avneet'
print(dct)
print('-'*50)

# Delete
print(dct)
del dct[4]
print(dct)
print('-'*50)

# Going through the Data
print(dct)
for i in dct.keys():
    print(i,dct[i]['name'],dct[i]['phone'])
print('-'*50)

# Going a level deeper with marks
data = { 1 : {'name' : 'Ashish', 'phone' : 123456789, 'marks' : {'hin':45,'mth':42,'sci':41}},
         2 : {'name' : 'Ankur' , 'phone' : 127398127, 'marks' : {'hin':32,'mth':38,'sci':13}},
         3 : {'name' : 'Riya'  , 'phone' : 127398127, 'marks' : {'hin':12,'mth':38,'sci':43}}}
print(data)

for i in data.keys():
    print(i,data[i]['name'], data[i]['marks']['hin'])
