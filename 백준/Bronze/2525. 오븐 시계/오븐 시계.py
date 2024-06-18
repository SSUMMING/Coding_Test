a,b = map(int,input().split())
c = int(input())

a += (b+c) // 60
a = a % 24
if b + c < 60:
    b += c
else:
    b = (b+c) - 60*((b+c)//60)

print(a,b)