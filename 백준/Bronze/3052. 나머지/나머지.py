N=[]
for i in range(10):
    a = int(input())
    N.append(a%42)
print(len(set(N)))