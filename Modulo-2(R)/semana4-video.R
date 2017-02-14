f <- function() {
        set.seed(200)
        x<-rnorm(100)
        e<-rnorm(100,0,2)
        y<-0.5+2*x+e
        plot(x,y)
}

f2 <- function() {
        set.seed(1)
        x<-rnorm(100)
        log.mu <- 0.5 +0.3 *x
        y <- rpois(100,exp(log.mu))
        summary(y)
        plot(x,y)
}

