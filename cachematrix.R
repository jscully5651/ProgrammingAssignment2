## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invX<-NULL
  set <- function(y) {
    x <<- y
    invX <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) invX <<- inverse
  getInverse <- function() invX
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invX <- x$getInverse()
  if(!is.null(invX)) {
    message("getting cached data for inverse matrix")
    return(invX)
  }
  invX <- x$get()
  invX <- solve(invX, ...)
  return(invX)
  m
}
