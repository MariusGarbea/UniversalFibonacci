'''
Returns sum of parameters
'''
def sum(a, b):
  return a + b

'''
Returns first fibonacci number greater than n
'''
def fib(n):
  n1 = 0
  n2 = 1
  while n2 < n:
    temp = n2
    n2 = sum(a, b)
    n1 = n2
  return n2
