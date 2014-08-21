##Matrix Cache and solving assignment 2 from Coursera R Programing Aug 2014
## cacheing the Matrix. 
makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setSolve <- function(solve) s <<- mean
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
    data
    #sM <- solve(data)
    #x$setmean(sM)
}
