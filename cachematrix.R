##Creamos nuestra función de la siguiente manera
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(matrix) {
                x <<- matrix
                m <<- NULL
        }
##Para poder conseguir la matriz y obtener la matriz inversa escribimos el siguiente código
        get <- function() {
x
}
        setInverse <- function(inverse){
 m <<- inverse
}
        getinverse <- function() {
m
}
##Para crear el comando que nos retorne las listas usaremos
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
##Este código que escribiremos nos muestra la inversa
cacheSolve <- function(x, ...) {
        x <- x$getinverse()
        if(!is.null(x)) {
                return(x)
        }
        data <- x$get()
        x <- solve(data)%*% data

        x <- inverse(data, ...)
        x$setInverse(x)
        x
}
