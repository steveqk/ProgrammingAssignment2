## makeCacheMatrix creates matrix whereas cacheSolve checks if cache exists, recalcs and caches if no cache exists or returns cache if exists

## creates matrix

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 
 get <- function() x
 setInv <- function(Inv) i<<-Inv
 getInv <- function() i
 
 list(get = get, 
      setInv = setInv, 
      getInv = getInv)
  
}

## runs cache check and recalcs if necessary or returns cache if exists

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
