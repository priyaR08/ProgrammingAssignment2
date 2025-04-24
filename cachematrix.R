## I have created a matrix vector which can use the functions the get, set, getinverse, setinverse function. Through these functions we can call the matrix, make changes in the matrix externally, also make the same updates in the inverse and save it.

## Creation of vector matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function()x
        setinverse<-function(inverse)m<<-inverse
        getinverse<-function()m
        list(set=set,get=get, setinverse=setinverse, getinverse=getinverse)
}

## This will help get an inverse for the matrix inputted, store it and retrieve it.

cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m)){
                message("getting cashed data")
                return(m)
                }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
