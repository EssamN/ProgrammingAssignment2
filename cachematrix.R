## Put comments here that give an overall description of what your
## function do

## makeCasheMatrix has set, get and the inverse of get and set

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## this would be used to get the cashe data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cashed data")
    return(inv)
                 ## cheching if its inverse if not message is returned 
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
