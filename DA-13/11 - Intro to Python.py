# https://github.com/AshishJangra27/interview-questions/blob/main/Conditions%20in%20Python.md


# int
print(12, type(12))

# float
print(12.5, type(12.5))

# string
print('Ashish', type('Ashish'))

# bool
print(True, type(True))


# print fn with multiple params
print(False, True, 10, 10.5, 'Ashish')


# Operators
# 1. Arithmetic Operator

print(16+5)
print(16-5)
print(16/5)
print(16//5)
print(16%5)
print(16*5)
print(16**5)


print(16*'-')

print(16 ** False)


print('Ashish' + ' ' +  'Jangra')

print('True' + 'True')


# 2. Comparison Operator

print(10>5)
print(10>=5)
print(10<5)
print(10<=5)
print(10==5)
print(10!=5)

print('-'*10)

print('AA' > 'AB')


# logic Operators

# and
print((10 > 5 and 10 < 15) or 10 < 20)





# 3. Typecasting

print(int(-15.5))
print(int('14352340'))
print(int(True))

print(float('10.4'))

print(16*'-')


a = 13

a = a * 2
a *= 2

a = 'A'

print(a)

print(16*'-')

age = -5

print(age>=18 and age<=100)


# 0-18 = underage
# 18-100 = edligible
# 100+ = pde
# -ve = not valid age

if age>=18 and age<=100:
    print('eligible')
    
elif age>=0 and age<18:
    print('underage')

elif age>100:
    print('person does not exists')
    
else:
    print('not valid age')
    
    








