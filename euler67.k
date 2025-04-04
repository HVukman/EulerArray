// same as 18
maxx: {$[(#x)>1;{max'x[idx index x]}x;x]}
index:{|1_|!#x}
max:{(|(x)[<x])[0]}
idx:{x,x+1}'
inp:|.'0:"ngnkeuler/euler67input"
iter:1_!#inp
start:: maxx inp[0]
nooutput: {start:: start + inp[x]; start:: (maxx start); start}'iter
start[0]
