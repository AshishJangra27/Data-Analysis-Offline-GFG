
num = 19

# for i in range(1,101):
#     print(num ,'x', i ,'=', num*i)


# for i in range(0,11):
#     print(i)

# for i in range(10,0,-1):
#     print(i)

# num = int(input('enter a number : '))

# for i in range(num*10, num-1, -num):
#     print(i)
    
# 10,-1,-1
# 20,0,-2
# 30,1,-3
# 50,3,-5
# 190,18,-19



for k in range(3,19):
    count = 0
    for first_dice in range(1,7):
        for second_dice in range(1,7):
            for third_dice in range(1,7):
                if(first_dice + second_dice + third_dice == k):
                    count += 1
                    
            print(k,':', round((count/216)*100,2), "%")




for k in range(3,19):
    count = 0
    for first_dice in range(1,7):
        for second_dice in range(1,7):
            print(k,':', round((count/216)*100,2), "%")    
            
            
    
        
        
        
        