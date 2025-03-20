// if number is even or odd
odd: { $[2!x;1;0]}
// collatz (hailstone) sequence
collatz: { $[odd x; (3*x)+1 ;_(x%2)] }
// look for maxumum for each !limit
limit:1000000
max: {|/x}
maximum: max({#{x>1}{ collatz x }\x}'!limit)
&maximum={#{x>1}{ collatz x }\x}'!limit
