## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function is composed by 4 functions
## set : to set your data 
## get : to get your data
## setSolve : to set your inverse matrix
## getSolve : to get yout inverse matrix
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
    		x <<- y
    		m <<- NULL
  	}
  	get <- function() x
  	setSolve <- function(solve) m <<- solve
  	getSolve <- function() m
  	list(set = set, get = get, setSolve = setSolve,getSolve = getSolve)	
}


## Write a short comment describing this function

## This function put the inverse matrix in cache and return it.
## If it's already in cache it's return immediately.
cacheSolve <- function(x, ...) {
	m <- x$getSolve()
  	if(!is.null(m)) {
    		message("getting cached data")
    		return(m)
  	}
  	data <- x$get()
	m <- solve(data, ...)
	x$setSolve(m)
	m
}
