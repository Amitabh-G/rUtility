
target=function (sd){
  b=pnorm(0.0278, mean = 0.0276, sd = sd)
  a=pnorm(0.0275, mean = 0.0276, sd = sd)
  print(sd)
  # print(abs(b-a-0.98))
  return(abs(b-a-0.98))
}
sd=optim(1,target, method='Nelder-Mead')
sd$par

sd
