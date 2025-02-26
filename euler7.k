// Solved by sieve, n is a estimate by appromximately 10000/log(10000) and then adjusting
n:110900
limit: _%n+1 // until square root +1
iter:(2_!limit),limit  // to be iterated over inclusive limit
numbers: (!n),n
sieve: {2_((&0=x!)numbers)} // sieve function first two omitted
dummy: { {yy:x; $[ ( (yy!x) ~ 0 ); numbers[x]:0 ;]}'sieve x}'|iter // iter must be reversed
dummy: dummy
(1_(0<)#numbers)[10000] // filter bigger than zero and take the 10001st
