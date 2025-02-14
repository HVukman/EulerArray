divisors: {(1_!((_x%2)+1))[&0={1_(!(_x%2)+1)!'x}x]}
dict: !10000 !  (10000 # 0)
allsum:{{$[ */ ((( +/ divisors (+/ divisors x)) ~ x),!(+/ divisors x) ~ x) ; [dict[x]:x ; dict[(+/ divisors x)]: (+/ divisors x)]; 0 ]}[x]}
allsum' !10000
b: 1 10000 # dict[!10000]
+/,// b