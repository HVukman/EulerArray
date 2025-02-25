prime:{$[x<4;1;{ ~(+/(0=(2_(! (_%(x+1))),(_%x)) !'x)) }x]}
nprimes: (1_!20)[&0=prime'(1_!20)] // not primes
primes: 2 3 5 7 // primes below that are needed
// not over 7 since bigger than square 20
pow:{*/y#x} // power function
zz:0
xmax:{x[>x][0]} // max of vector
final: {zz::y; 1_{~(zz!x)}{_x%zz}\x} // how many times does zz fit in x
erg:xmax'+#''{yy::x; {final[yy;x]}'primes}'nprimes
(*/pow'[primes;erg])*11*13*17*19
