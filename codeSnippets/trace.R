##########################################################################
### Inspecting the libraries and functions and if they can be changed. ###
##########################################################################



trace(utils:::unpackPkgZip, edit=TRUE)
trace(RQuantLib:::AmericanOption, edit=TRUE)
trace(RQuantLib:::EuropeanOption, edit=TRUE)
trace(rmgarch:::dccfit, edit = T)
install.packages('GGally')
install.packages('Hmisc')
install.packages("picante")
install.packages('psych')
install.packages('FinTS')
install.packages('RiskPortfolios')
install.packages('bnlearn')

install.packages('ROI', repos="http://R-Forge.R-project.org")
install.packages('ROI.plugin.glpk')
install.packages('ROI.plugin.quadprog')
install.packages('ROI.plugin.symphony')
trace("unpackPkgZip", where=asNamespace("utils"), quote(Sys.sleep(2.5)), at=14L, print=FALSE)
install.packages('robustbase')
