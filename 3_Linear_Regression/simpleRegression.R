simpleRegression = function(x, y){
  if(length(x) != length(y)){
    stop("Lengths of input do not match")
  }
  
  n = length(x)
  x_square_mean = 0
  y_mean = 0
  x_mean = 0
  xy_mean = 0
  
  for(i in 1:length(x)){
    xi = x[i]
    yi = y[i]
    x_square_mean = x_square_mean + xi^2
    y_mean = y_mean + yi
    x_mean = x_mean + xi
    xy_mean = xy_mean + (xi * yi)
  }
  
  x_square_mean = x_square_mean / n
  y_mean = y_mean / n
  x_mean = x_mean / n
  xy_mean = xy_mean / n 
  
  b1 = ((y_mean)*(x_mean) - (xy_mean)) / ((x_mean)^2 - x_square_mean)
  b0 = (y_mean - b1 * x_mean)
  print(b1)
  print(b0)
}