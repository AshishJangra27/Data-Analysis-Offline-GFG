age = 25

if (age >= 18) and (age <= 100):
    print('eligible')

elif (age >= 0) and (age <= 17):
    print('not eligible')
    
else:
    print('invalid ages')
    
age = 200
    
if (age >= 18) and (age <= 100):
    print('eligible')

elif (age < 0) or (age > 100):
    print('invalid ages')
    
else:
    print('not eligible')