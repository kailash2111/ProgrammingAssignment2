mmakeCacheMatrix <- function(x = matrix()) {inv <- NULLset <- function(y){x <<- yinv <<- NULL}get <- function() xsetInverse <- function(solveMatrix) inv <<- solveMatrixgetInverse <- function() invlist(set = set, get = get, setInverse = setInverse, getInverse = getInverse)}

cacheSolve <- function(x, ...) {## Return a matrix that is the inverse of 'x'inv <- x$getInverse()if(!is.null(inv)){message("getting cached data")return(inv)}data <- x$get()inv <- solve(data)x$setInverse(inv)inv}
