// read and flatten with ,//
inp:,//0:"euler8input"
// testcase
length: 4
// take array index + 0 1 2 3 for indices
index:{(!length)+ x}'(length-1)_|!1000
product: { length # x} // turn each string into an array of length
prodsum:{*/.'x} // parse with . for each string and take product sum
xmax:{x[>x][0]} // max of vector
sol:prodsum'product'inp[index]
xmax sol
// question
length: 13
index:{(!length)+ x}'(length-1)_|!1000
product: { length # x}
sol:prodsum'product'inp[index]
xmax sol
