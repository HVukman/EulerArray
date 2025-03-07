n:2000000
limit: _%n+1 // until square root +1
iter:(2_!limit),limit  // to be iterated over inclusive limit
iter: 2,(2!)#iter // filter out non odd numbers
numbers: (!n),n
sieve: {2_((&0=x!)numbers)} // sieve function first two omitted
dummy: { {yy:x; $[ ( (yy!x) ~ 0 ); numbers[x]:0 ;]}'sieve x}'|iter 
dummy: dummy
+/1_(0<')#numbers
