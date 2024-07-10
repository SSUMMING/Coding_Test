S = input()
L =[]
for char in range(ord('a'), ord('z') + 1):
    L.append(chr(char))

for i in range(len(L)):
    if L[i] in S:
        print(S.find(L[i]), end=' ')
    else:
        print(-1, end= ' ')