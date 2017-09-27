mystere <- function(){
  nb_mystere <- sample(1:100, 1)
  proposition <- 0
  while (proposition != nb_mystere) {
    proposition <- as.numeric(readline("Nombre mystère: "))
    # Winning case
    if (proposition == nb_mystere) {
      cat("Bravo")
      break
    } else { 
      # Try again case
      if (proposition < nb_mystere){
        cat("Trop petit")
      } else {
        cat("Trop grand")
      }
    }
  }
}



