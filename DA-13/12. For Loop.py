# Prime or Not

counter = 0

for num in range(1,100001):
    
    isPrime = True
    
    for i in range(2,num):
        if num%i == 0:
            isPrime = False
            break
    
    if isPrime:
        counter += 1
        
print('-')
print(counter)
