def sum(a, b):
  return a + b

def fib(n):
  n1 = 0
  n2 = 1
  while n2 < n:
    temp = n2
    n2 = n1 + n2
    n1 = n2
  return n2
