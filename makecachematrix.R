# Define the function MakeCacheMatrix and pass in the matrix x
MakeCacheMatrix <- function(x = matrix)
{
        # Set the environmental m variable to NULL
        m <- NULL
        
        # Define the internal set function and pass in the
        # environmental variable y
        set <- function(y)
        {
                # Set the Lexical scope variable x to the
                # value of the environmental variable y
                x <<- y
                
                # Set the Lexical scope variable m to NULL
                m <<- NULL
        }
        
        # Define the get function
        get <- function() x
        
        # Define the internal setsolve function, passing
        # the solve method. Set the Lexical scope variable
        # m to the result of solve(x)
        setsolve <- function(solve) m <<- solve(x)
        
        # Define the internal geysolve function
        getsolve <- function() m
        
        # Define the internal function list, each member
        # of which is called utilising the $ operator.
        list(set = set
             , get = get
             , setsolve = setsolve
             , getsolve = getsolve)
}