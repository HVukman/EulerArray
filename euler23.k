abund: { (+/(&0 = (!x)!'x)) > x}
thres:28123
// abund' thres
nonabund: (!thres)[&0=abund' !thres]
abundlist: (!thres)[&1=abund' !thres]
lenabun: # abundlist
sq:(+(lenabun,lenabun )# abundlist) + ((lenabun,lenabun )# abundlist)
unique: ?,/sq // unique elements of sums
+/ &(0N)= (unique ? !thres)
