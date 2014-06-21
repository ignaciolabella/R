## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# The makeCacheMatrix, when called sets the y argument into the global variable x, 
# gets and returns the global variable x value 
# sets the inverse calculated value into the inv global variable
# and gets the inverse global value and returns it

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        
        # Set the value introduced into the function into goba variable
        set <- function(y){
                x <<- y
        }        
        # Gets and returns the global value of the matrix
        get <- function() x
        
        # Sets the inverse value into the global variable
        setinverse <-function(inverse) inv <<-inverse
        
        # Gets and returns the global value of the inverse
        getinverse <- function() inv
        
        list( set = set , get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Check if the matrix has changed in order to recalculate the inverse
        
        # Verifies if the inverse has been calculated before. If so, returns the 
        # already calculated value
        
        inv <- x$getinverse()
        if(!is.null(m)) {
                message("Getting cached inverse matrix")       
                return(inv)
        }
        
        # If not previously calculated gets the matrix value and stores into "data" variable
        # then allocates the inverse into "inv" variable and "sets" that value for further use
        data <- x$get()
        inv <- solve(x,...)
        x$setinverse(inv)
        inv
        
        
}
