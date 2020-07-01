back.clean <- function(x)
{
  obs <- as.numeric(x)
  nx <- length(x)
  back <- obs
  if (nx > 1)
  {
    nt <- 1
    t <- 0
    
    while (nt > 0)
    {
      for (i in nx:2)
      {
        if (back[i] > back[i - 1])
        {
          back[i] <- back[i - 1]
        }
      }
      back1 <- back[nx:1]
      back0 <- c(0, back[nx:2])
      nt <- sum(back0 > back1)
      t <- t + 1
    }
    message(paste("Changed", sum(obs != back), "Values with", t, "attempts"))
  }
  return(back)
}
  