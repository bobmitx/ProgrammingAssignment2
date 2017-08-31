## This script is for a pair of functions that cache the inverse of a matrix.


## This function creates a special matrix object that can cache it's inverse.

makeCacheMatrix <- function(x = matrix()) {

	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	get <- function() {
		x
	}

	setinverse <- function(solve) {
		m <<- solve
	}

	getinverse <- function() {
		m

	}

	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## This function computes the inverse of a square matrix, can be done with the solve function in R

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        x$getinverse()
	if(!is.null(m)){
		message('getting cached data')
		return(m)
	}

	data <- x$get()

	m <- solve(data,... )

	setinverse(m)

	return(m)
}
