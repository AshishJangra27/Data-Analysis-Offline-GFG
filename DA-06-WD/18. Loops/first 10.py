counter = 0

for i in range(1,2000):
    
    if (i%3 ==0 and i%5==0 and i%7==0):
        print(i)
        counter += 1
        
    if counter == 10:
        break
    