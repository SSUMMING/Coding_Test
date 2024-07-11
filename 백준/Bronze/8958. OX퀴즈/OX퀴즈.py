T = int(input())
for _ in range(0,T):
    S = input()
    a = 0
    b = 0
    for item in S:
        if item == 'O':
            a += 1
            b += a
        else:
            a = 0
    print(b)