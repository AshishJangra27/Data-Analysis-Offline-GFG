# age = 18

if (age >= 18) and (age <= 100):
    print('eligible')

elif (age >= 0) and (age < 18):
    print('not eligible')

else:
    print('not a valid age')


number = 15

#q1
if (number%5 == 0):
    print('divisible by 5')
else:
    print('not divisible by 5')


#q2
if (number%5 == 0) and (number%7 == 0):
    print('divisible by 5 and 7')
else:
    print('not divisible by 5 and 7')


#q3
if (number%5 == 0) and (number%7 == 0) and (number%13 != 0):
    print('divisible by 5 and 7 but not 13')
else:
    print('~()')
    


#q4    
n = 35

if (n%5 == 0) and (n%7 == 0):
    print('divisible by 5 and 7 both')
    
elif (n%5 == 0) and (n%7 != 0):
    print('5 not 7')
    
elif (n%5 != 0) and (n%7 == 0):
    print('7 not 5')
    
elif (n%5 != 0) and (n%7 != 0):
    print('not 5 not 7')
    
    
    
    
    
    
n = 10

if n%5 == 0:
    if n%7 == 0:
        if n%13 == 0:
            print('5,7,13')
        else:
            print('5, 7 not 13')
    else:
        print('5, not 7')

elif n%7 == 0:
    if n%13 == 0:
        print('7,13 not 5')
    else:
        print('7 not 13 not 5')

else:
    print('not 5 not 7 not 13')
    
    
    
    
    
