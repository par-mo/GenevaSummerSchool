##########
# problem 1
##########
for (num in 1:20) {

   if ((num %% 3 == 0)&&(num %% 5 == 0)) {
    print ("FIZZ BUZZ")
   }
  else if (num %% 3 == 0) {
    print ("FIZZ")
  }
  else if (num %% 5 == 0) {
    print ("BUZZ")
  }
  else 
    print(num)
}



########
# problem 3
#########
# 3d space 
# 1<=t<=B

co <- 1
X_0 <- c(0,0,0)
B <- 10^4
set.seed(1982)
Ut <- runif(B)
head(Ut)

a <-c(1/6,2/6,3/6,4/6,5/6,1)

location_matrix= matrix(, nrow = 3, ncol = B)



function_A <- function(T) {
  # give back the U_T
  output_A= U[T]
  return(output_A)
}

function_B <- function(U_T){
  # a_1, a_2, a_3, a_4, a_5, a_6
  if (U_T)<a[1]
    output_B=c(1,0,0)
  else
    if (U_T)<a[2]
      output_B=c(-1,0,0)
    else
      if (U_T)<a[3]
      output_B=c(0,1,0)
      else
        if (U_T)<a[4]
        output_B=c(0,-1,0)
        else
          if (U_T)<a[5]
          output_B=c(0,0,1)     
          else
            if (U_T)<a[5]
            output_B=c(0,0,-1)
}

for (t_step in 1: B){
  location_matrix[t_step]=location_matrix[t_step-1]+  function_B(function_A (U[t_step]))
}



