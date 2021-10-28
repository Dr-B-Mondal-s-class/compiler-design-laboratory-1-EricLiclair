n = int(input())

while n > 0:
    a = [int(i) for i in input().split()]
    print(sum(a))
    n -= 1
