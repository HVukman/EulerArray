prm:{$[0=x;,!0;,/(prm x-1){?[1+x;y;0]}/:\:!x]}
perm:{x[prm[#x]]}
tt:(0;1;2;3;4;5;6;7;8;9)
rr:perm tt
sorted:rr[<rr]
sorted [999999]
