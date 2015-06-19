## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 
 get <- function() x
 setInv <- function(Inv) i<<-Inv
 getInv <- function() i
 
 list(get = get, 
      setInv = setInv, 
      getInv = getInv)
  
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInv()
  
  if(!is.null(i))
  {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)  
  x$setInv(i)
  i
}
