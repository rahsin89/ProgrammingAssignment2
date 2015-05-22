##### Create a list to calculate the inverse of a matrix ####
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y = matrix()) 
    {
      x <<- y
      inv <<- NULL
    }
  
  get <- function() x
  
  setinverse <- function(mat_inverse) inv <<- mat_inverse
  
  getinverse <- function() inv
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

#####checking if inverse of matrix is cached #########

cacheSolve <- function(x, ...) {
  t <- x$getinverse()
  
  if(matequal(t,inv)) # condition to compare whether matrix value has changed
    {
      message("getting cached data")
      return(t)
    }
  
  data <- x$get()
  
  t <- solve(data, ...) #calculate inverse of matrix
  
  x$setinverse(m)
  
  t
}