#Twitter 1 - Configure Tweets and Download them
#@dupadhyaya  #Working using my Keys
#Load libraries
install.packages('curl')
install.packages('twitteR')
install.packages('ROAuth')
install.packages('syuzhet')
library("curl")
library("twitteR")
library("ROAuth")
library("syuzhet") #library for sentiment analysis - comparison

download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#https://apps.twitter.com/
#different for each account
consumerKey="Hl7dnaKW1dnxxxxxxxxxb4sUu"
consumerSecret="ntFulQOeNPxxxxxxxxxxxxxxxxxxyjVftkHe"
AccessToken="145xxxxxxxxxxxxxxxxxxxxxxxxxn0kc"
AccessTokenSecret="V1eRmgsMvxxxxxxxxxxxxxxxhOyVn2NZvr"

#Comm
