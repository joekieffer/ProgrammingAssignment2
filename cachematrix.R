##Matrix Cache and solving assignment 2 from Coursera R Programing Aug 2014
## cacheing the Matrix. 
makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setSolve <- function(solve) s <<- solve
    getSolve <- function() s
    list(set = set, get = get,
         setSolve = setSolve,
         getSolve = getSolve)
}


## inverse matrix, hopefully we can save time with out having to compute it. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    sM <- x$getSolve()
    if(!is.null(sM)) {
        message("getting cached data")
        return(sM)
    }
    data <- x$get()
    sM <- solve(data)
    x$setSolve(sM)
    message("setting cached data to")
    sM
}
