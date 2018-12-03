#in runRegression.R set up a simple mixed effects model/t-test to see if the distances differ
gmpts.fit <- with(gmpts, lmer(d2ship ~ status + (1 | trackNum)))
gmpts.fit
summary(gmpts.fit)
