
for s in range(3,19):
    c = 0
    
    for i in range(1,7):
        for j in range(1,7):
            for k in range(1,7):
                
                if i+j+k == s:
                    c += 1
    
                
    print(s, round((c/216)*100,2))
    
    


# Probability of getting either even number or number greater than 5 if rolling 2 dices
