## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y)
{
x<<-y
}
getmatrix<-function() x
setinversematrix<-function(matrix) m<-matrix
getinversematrix<-function() m
list(set = set, getmatrix = getmatrix,
             setinversematrix = setinversematrix,
             getinversematrix = getinversematrix)
}

cacheSolve <- function(x, ...) {
m<-x$getinversematrix()
if(!is.null(m))
{
print("cached")
return(m)
}
data<-x$getmatrix()
m=solve(data,...)
x$setinversematrix(m)
m
}

a<-makeCacheMatrix(matrix(1:4,2,2))
cacheSolve(a)
