a = []
for i in range(9):
    N = int(input())
    a.append(N)

print(max(a))
print(a.index(max(a))+1)