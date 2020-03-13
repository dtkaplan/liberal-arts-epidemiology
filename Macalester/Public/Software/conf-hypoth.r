# Demonstrations of the construction of confidence intervals and hypothesis testing.

energy = c(rep( "High", 520),
           rep( "High", 510),
           rep( "High", 210),
           rep( "High", 90),
           rep( "Low", 100),
           rep( "Low", 150),
           rep( "Low", 600),
           rep( "Low", 390) )

activity = c(rep( "Active", 520),
           rep( "Active", 510),
           rep( "Lethargic", 210),
           rep( "Lethargic", 90),
           rep( "Active", 100),
           rep( "Active", 150),
           rep( "Lethargic", 600),
           rep( "Lethargic", 390) )

condition = c(rep( "Disease", 520),
           rep( "Control", 510),
           rep( "Disease", 210),
           rep( "Control", 90),
           rep( "Disease", 100),
           rep( "Control", 150),
           rep( "Disease", 600),
           rep( "Control", 390) )

tab8.8 = data.frame( energy=energy, activity=activity, condition=condition)

# odds ratio from a 2x2 table with condition along the 2nd (horizontal) axis
odds.ratio = function(t){
  return( (t[1,1]/t[2,1])/(t[1,2]/t[2,2]) )
}
