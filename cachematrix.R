## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		# holds the value of the inverse of the matrix
        # initially nothing is cached so set it to NULL
        inverse <- NULL
        
        # stores the matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # clear the inverse value whenever we modify the original matrix
                inverse <<- NULL
        }

        # gets current matrix
        getMatrix <- function() {
                x
        }

        # make the actual calculation of the inverse matrix
        cacheInverse <- function(solve) {
                inverse <<- solve
        }

        # get the cached value of the inverse
        getInverse <- function() {
                inverse
        }
        
        # return a list. Each named element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # get the cached value
        inverse <- y$getInverse()
        # check if a cached value exists. If so, return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # otherwise, caclulate the inverse and store it
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # return the inverse
        inverse
        ## Return a matrix that is the inverse of 'x'
}
