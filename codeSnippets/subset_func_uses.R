numvec = c(2,5,8,9,0,6,7,8,4,5,7,11)
charvec = c("David","James","Sara","Tim","Pierre",
            "Janice","Sara","Priya","Keith","Mark",
            "Apple","Sara")
gender = c("M","M","F","M","M","M","F","F","F","M","M","F")
state = c("CO","KS","CA","IA","MO","FL","CA","CO","FL","CA","WY","AZ")

subset(numvec, numvec > 7)
subset(numvec, numvec < 9 & numvec > 4)
subset(numvec, numvec < 3 |numvec > 9)

df = data.frame(var1=c(numvec), var2=c(charvec),
                gender=c(gender), state=c(state))

df
subset(df, var1 < 5)
subset(df, var2 == "Sara")
subset(df, var1==5, select=c(var1, var2, state))
subset(df, var2 != "Sara" & gender == "F" & var1 > 5)