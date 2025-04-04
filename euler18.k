// take pairwise maximum of row
maxx: {$[(#x)>1;{max'x[idx index x]}x;x]}
index:{|1_|!#x}
max:{(|(x)[<x])[0]}
idx:{x,x+1}'
// read and parse as input
inp:|.'0:"ngnkeuler/euler18input"
// loop starts from 1 with first row already pairwise maximised, than just add rows
iter:1_!#inp
start:: maxx inp[0]
nooutput: {start:: start + inp[x]; start:: (maxx start); start}'iter
start[0]
