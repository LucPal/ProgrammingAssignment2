## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse. 
# The output is a simple list of functions: get, setinv, and getinv
#

makeCacheMatrix <- function(x=matrix()) {
  x<<-x
  inv_x <<- NULL
  get <- function() x
  setinv <- function(inv) inv_x <<- inv
  getinv <- function() inv_x
  list(get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
#
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), then the cacheSolve should retrieve
# the inverse from the cache.
#

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
  inv <- x$getinv()
  
  # if/else loop below checks if the inverse has already been calculated before.
  # IF:
  if(!is.null(inv)) {
    message("Getting cached data")
    return(inv)                      # This command quits the function and shows the output. 
  }
  # (ELSE):
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}