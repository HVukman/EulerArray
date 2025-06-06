// lazy brute force over permutations
prm:{$[0=x;,!0;,/(prm x-1){?[1+x;y;0]}/:\:!x]}
perm:{x[prm[#x]]}
pandigitals: perm 0 1 2 3 4 5 6 7 8 9
test2: ,/'$'pandigitals@&{~x[0]=0}'pandigitals
test: 2 3 5 7 11 13 17
sol:&1={xx::x; dummy2::.'{xx[x+0 1 2]}'1_!8; 0=+/{test[x]!dummy2[x]}'!7 }'test2
solution:,,/.'test2[sol]
// solution
+/+/ solution
