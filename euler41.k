w: `pri 7900000 // primitive `pri for sieve; 7900000 is arbritrary limit
ww: w@&1000000<w // filter all numbers below 1 million
pandig: {1=*/"1234567"=($x)@<$x} // sort and then check if number equals 1234567
|/ ww@&pandig' ww // filter with pandig, maximum with |/
