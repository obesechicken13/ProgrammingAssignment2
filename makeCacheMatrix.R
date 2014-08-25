#a <- makeCacheMatrix(matrix(c(1,2,3,4,5,6,7,8,9),ncol=3))
makeCacheMatrix <- function(x = numeric()){
	m <- NULL
	
	set <- function(y) {
                x <<- y
                m <<- NULL
        }
		
	get <- function() x
	setinv <- function(inv) m <<- inv
	getinv <- function() m
	list(set = set, get = get,
		 setinv = setinv,
		 getinv = getinv)
}