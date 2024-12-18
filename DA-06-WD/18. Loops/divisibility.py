counter = 0

for i in range(1,101):
    
    if i%5 == 0 and i%3 ==0:
        counter += 1
        print(i)
        
print('-'*5)
print('Freq:',counter)
