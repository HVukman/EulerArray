inp:0:"ngnkeuler/22input"
input:","\inp[0]
cut:{|1_|1_x}
input:cut'input
// make each integer list
input:`i$'input
inputsort:input[<input]
inputsortednames:`c$inputsort
// -64 beacause ascii
toint: {`i$x-64}
inputsortedint: toint'inputsortednames
inputsortedscore: +/'inputsortedint
iter:1_!5164
+/(inputsortedscore * iter)


