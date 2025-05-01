// using the sieve 
n:100
limit: _%n+1 // until square root +1
iter:(2_!limit),limit  // to be iterated over inclusive limit
numbers: (!n),n
sieve: {2_((&0=x!)numbers)} // sieve function first two omitted
dummy: { {yy:x; $[ ( (yy!x) ~ 0 ); numbers[x]:0 ;]}'sieve x}'|iter // iter must be reversed
dummy: dummy
primes: 1_(0<)#numbers
// find reptend primes, easy since only smaller than 100
sqhund: {*/x#10.0}
reptend: {0=#&0=_x!'(sqhund' (1_!x))}
// take maximum of reptend primes
|/primes[&1=reptend' primes]
