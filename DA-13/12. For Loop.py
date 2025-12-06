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


# 2. Probabilities of getting sum of all the number if rolling 4 dices in fractions and percentages

for num in range(4,25):
    
    c = 0
    for i in range(1,7):
        for j in range(1,7):
            for k in range(1,7):
                for l in range(1,7):
                    if i + j + k + l == num:
                        c += 1
                    
    print(num, ':', str(c) + '/1296', '(',round((c/1296)*100,4), '% )')
