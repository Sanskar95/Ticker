
i=1
while(1)
{
  
m<-GET("https://koinex.in/api/ticker")


eth=content(m)$prices$ETH
ltc=content(m)$prices$LTC
rip=content(m)$prices$XRP

print(eth)
print(ltc)
print(rip)


 if(as.numeric(ltc)>23500 | as.numeric(eth)>105000  | as.numeric(rip)>170 ){
   print("rgfrf")
  dat<-list( api_key="a174af23", 
             api_secret="1e4be6ac9b97d5fa", 
             to="919113655286", 
             from="NEXMo", 
             text="Pls chek it out once")
  res <- POST("https://rest.nexmo.com/sms/json", body = dat, encode = "form", verbose())
 }

print(i)
Sys.sleep(600)
i=i+1


}

 