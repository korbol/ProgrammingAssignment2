## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  IM <- NULL
  set <- function(y) {
    x <<- y
    IM <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) IM <<- solve
  getinverse <- function() IM
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  IM <- x$getinverse()
  if(!is.null(IM)) {
    message("getting cached data")
    return(IM)
  }
  message("new calculation")
  data <- x$get()
  IM <- solve(data, ...)
  x$setinverse(IM)
  IM
        ## Return a matrix that is the inverse of 'x'
}
