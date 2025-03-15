// divisors of n
ndivisors: {&0=1_((!_(1+%x)),_(1+%x))!'x}
// number of all divisors, search until limit _x%2 and then divide until modulus not zero for all divisors
numdiv: {2+2*#?,//1_'{xx::x; {(xx!x)=0}{_x%2}\x}'(1_{1+ndivisors x}x)}
// limit for divisors
search:500
// while loop until over 500 divisors than take the nth number
+/!(|{(numdiv (+/!x))<search}{x+1}\1)[0]
