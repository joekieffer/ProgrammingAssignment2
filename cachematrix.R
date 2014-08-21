##Matrix Cache and solving assignment 2 from Coursera R Programing Aug 2014
##Caching matrix function maybe the meaning will be revealed
makeCacheMatrix <- function(x = matrix()) { 
    s <- NULL                       #setting the solve value to null
    set <- function(y) {            #getting the input
        x <<- y                     #setting the input
        s <<- NULL                  #setting the solve to null
    }
    get <- function() x             #getting the original matrix
    setSolve <- function(solve) s <<- solve #supersetting the solved matrix
    getSolve <- function() s        #getting cahce if already solved
    list(set = set, get = get,      #The cahce getting saved out
         setSolve = setSolve,
         getSolve = getSolve)
}


## inverse matrix cache.  
cacheSolve <- function(x, ...) {
    sM <- x$getSolve()              #Setting sm to cache value if
    if(!is.null(sM)) {              #checking if we have a cahce
        message("getting cached data") #print a message indicating time saving
        return(sM)                  #printing the cache
    }
    #The inverse math in the event we do not have a cahce
    data <- x$get()                 #get the matrix 
    sM <- solve(data)               #solve the matrix
    x$setSolve(sM)                  #set the matrix
    message("setting data to cache") #explain what happened
    sM                              #view the matrix
}