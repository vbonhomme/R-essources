navalbattle <- function(k=8){
  # Create an empty graph
  plot(NA, xlim=c(-1, k), ylim=c(0, k+1),
       axes = FALSE, ann=FALSE, asp=1)
  # Title
  title("Naval Battle")
  # Grid drawing
  segments(0:k, 0, 0:k, k) # vertical lines
  segments(0, 0:k, k, 0:k) # horizontal lines
  # Labels
  text(0.5:(k-0.5), k+0.5, 1:k) # columns
  text(-0.5, 0.5:(k-0.5), LETTERS[k:1]) #rows
  # Frame
  rect(0, 0, k, k, lwd=3)
}

# we can make a multipage .pdf with:
pdf("NavalBattle.pdf", width = 8, height = 8)
navalbattle(4)
navalbattle() # no k provided, so the efault value is used and a 8x8 grid is created
navalbattle(16)
dev.off() # the .pdf has been written in your working directory that can be accessed with getwd()



