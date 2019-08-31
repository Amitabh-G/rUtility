set.seed(5678)
B = matrix(0,1000,2)
print(head(B))
for(i in 1:1000)
{
  x = rnorm(4000) 
  y = 1 + 2*x + rt(4000,2.01)
  g = lm(y~x)
  B[i,] = coef(g)
}
qqnorm(B[,2])
qqline(B[,2])
print(head(B[, 2]))
