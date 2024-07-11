N =  int(input())
T = list(map(int,input().split()))
 
a =[]
max_score = max(T)
for item in T:

     a.append(item/max_score*100)


print(sum(a)/len(a))