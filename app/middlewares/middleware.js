
function middleware(req , res ,next) {
        
        if (true) {
            console.log("first middleware")
            
        }
        else
        next()
}

exports.default = middleware;