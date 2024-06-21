N = int(input())
a = input().split()

b = []
for i in range(len(a)):
    b.append(int(a[i]))

print(min(b),max(b))