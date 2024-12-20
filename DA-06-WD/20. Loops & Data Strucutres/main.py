
# 1. Find the sum of first 100 numbers

s = 0
for i in range(1,101):
    s += i
print(s)


n = 100
s = n*(n+1)/2
print(s)

print('-'*20)



# 2. Find the product of first 10 numbers

s = 1
for i in range(1,11):
    s *= i
print(s)

print('-'*20)


# 3. Find the sum of first 100 Odd numbers

n = 20
s = 0

for i in range(1,2*n,2):
    s += i
print(s)
print(n*n)
print('-'*20)

# 3. Find the sum of first 100 Even numbers

n = 100
s = 0

for i in range(2,2*n+1,2):
    s += i
    
print(s)
print(n**2 + n)
print('-'*20)



# 4. Find the sum of squares of first n numbers


n = 10
s = 0

for i in range(1,n+1):
    s = s + i**2
print(s)

print((n*(n+1)*(2*n+1))/6)
print('-'*20)

# 5. Find the sum of first 100 prime numbers







exams = ['Hindi','English','Punjabi','Maths','Science','Social Science']
marks = [67,33,76,56,76,56]

print('Hindi          : ', marks[0])
print('English        : ', marks[1])
print('Panjabi        : ', marks[2])
print('Maths          : ', marks[3])
print('Science        : ', marks[4])
print('Social Science : ', marks[5])


# 6. Find the average marks a student has scored

print('-'*20)
total_marks = 0
for i in range(len(marks)):
    total_marks += marks[i]
print(round(total_marks/len(marks),2))
print('-'*20)

# 7. Check if student failed in any exam? Count the frequency


grades = []

for i in range(len(marks)):
    if marks[i] < 40:
        print(exams[i], marks[i], 'F')
        grades.append('F')
    
    elif marks[i] > 40 and marks[i] < 50:
        print(exams[i], marks[i], 'C')
        grades.append('C')
    
    
    elif marks[i] > 50 and marks[i] < 60:
        print(exams[i], marks[i], 'B')
        grades.append('B')
        
    
    
    elif marks[i] > 60 and marks[i] < 80:
        print(exams[i], marks[i], 'A')
        grades.append('A')
        
    
    elif marks[i] > 80:
        print(exams[i], marks[i], 'A+')
        grades.append('A+')
        
        
    else:
        print(exams[i], marks[i], 'BG')
        grades.append('BG')

print(grades)








