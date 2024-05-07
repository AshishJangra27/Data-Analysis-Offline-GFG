n = int(input('Enter the number : '))

for i in range(1,101):
    print(n ,'*', i, '=', i*n)

for i in range(n,(n*10)+1,n):
    print(i)



for n in range(1,19):
    number = 0
    for i in range(1,7):
        for j in range(1,7):
            for k in range(1,7):
                if (i + j + k == n):
                    number = number + 1

    print(n,'=', round((number/216)*100,2))
