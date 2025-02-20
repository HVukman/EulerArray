square: {x*x} // square function then just sum the difference
{  (square' +/ ((!x),x)) - (+/square' ((!x),x)) } 100
