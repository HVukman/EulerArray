//  354294 as bound
inp:2_!354294
// fifth power of number x
fifth: {*/5#x}
// checks if fifth power of digits is x
// done by converting to string, taking its length and evaluating as number with .
eachfifth: {x=(+/fifth'.'((#$x),1)#$x)}
+/inp[&1=(eachfifth'inp)]
