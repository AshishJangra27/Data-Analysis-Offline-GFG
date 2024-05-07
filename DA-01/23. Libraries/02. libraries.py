# Math

import math

x = 10.8
print(math.ceil(x))
print(math.floor(x))
print(math.trunc(x))
print('-'*30)

x = 3
print(math.exp(x))
print(math.log10(x))
print('-'*30)

x = 90
print(math.sin(x))
print(math.cos(x))
print(math.tan(x))
print('-'*30)

print(math.pi)
print(math.e)
print(10, math.factorial(10))
print('*'*30)

# Random
import random

random.seed(40)
print(random.random())
print(random.randint(1,11))
print(random.choice([1,2,3,4,5]))
print(random.sample([1,2,3,4,5],2))
print(random.uniform(1.0,3.0))
print('*'*30)

# datetime
import datetime
print(datetime.datetime.now())
print(datetime.datetime(2023,10,28,10,30,0))
print(datetime.datetime.now().strftime("%m/%d/%y %H:%M:%S"))
date_1 = datetime.datetime(2023,10,28,10,30,0)
date_2 = datetime.datetime.now()
print(date_2 - date_1)
print('*'*30)

# collections
from collections import Counter, defaultdict, OrderedDict

lst = [1,2,3,4,5,5,5,6,6,7]
print(Counter(lst))
print('-'*30)

d = defaultdict(int)
d['a'] += 2
print(d)
print('-'*30)

d = OrderedDict()
d['one'] = 1
d['two'] = 2
print(d)
print('*'*30)

# Strings
import string

print(string.ascii_letters)
print(string.ascii_lowercase)
print(string.ascii_uppercase)
print('-'*30)

print(string.digits)
print(string.hexdigits)
print(string.octdigits)
print('-'*30)

print(string.punctuation)
