num = 10

if (num%5==0) and (num%3==0):
    print('Divisible by both')
    
elif (num%5==0) and (num%3!=0):
    print('Divisible by 5 not 3')

elif (num%5!=0) and (num%3==0):
    print('Divisible by 3 not 5')

else:
    print('Not Divisible')
