# Define the cacheSolve function, pass in the matrix x and potentially
# other variables as indicated with the eclipse.
cacheSolve <- function(x, ...)
{
        # Set the environment variable m to the return value of
        # MakeCacheMatrix internal function getsolve
        m <<- x$getsolve()
        
        # when the value of the environment variable m is not NULL
        if(!is.null(m))
        {
                # Inform the user that the pre calculated and
                # cached inverse of the x matrix is being retrieved
                message("getting cached data") 
                
                # Return the inverse of the x matrix and exit
                return(m)
        }
        
# The balance of the code only executes when the Lexical Scope
# variable is NULL
        
        # Set the internal variable data to the result of the
        # MakeCacheMatrix internal function get - this is the
        # new matrix data
        data <- x$get()
        
        # Set the Lexical Scope variable value to the inverted
        # matrix of the new x matrix.
        m <<- solve(data)

        # Call the setSsolve internal function of the
        # MakeCacheMatrix function
        x$setsolve(m)
        
        # Return m
        m
}