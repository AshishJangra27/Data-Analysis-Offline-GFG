

counter = 0

n = 1

while counter != 1000:

    prime = True
    
    for i in range(2,n):
        if n%i == 0:
            prime = False
            break
    
    if prime:
        counter += 1
        print(n)
    
    if counter == 1000:
        print('Coutner : ',counter)
        break

    n += 1


    


    