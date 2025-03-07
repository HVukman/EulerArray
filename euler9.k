// only with even numbers
// n is a guess
n:200
square2:{_(x*x)%2}
find:1000
// dicksons method for making the triplets
// dickson finds the pairs for x
dickson: {r::x;xx:(square2 x); { dummy1::x; {dummy:_dummy1%x; x,dummy}'(1_!x)[&0=1_(!(_%x)) !'x]}xx}
// pyth produces the triplets
pyth: {s:x[0];t:x[1]; woof: 0 0 0; woof[0]:r+s;woof[1]:r+t;woof[2]:r+s+t;woof}
// iterate over even numbers
iter:(~2!)#(1_!n)
*/,/(,/{pyth'dickson x}' iter)[&find=(+/)',/{pyth'dickson x}' iter]
