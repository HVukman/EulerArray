NB. checks if number is pandig, convert to string, sort and then check match with -:
pandig=: ('1234567' -: /:~)@":"0  NB. not higher than 7 digits; with each "
NB. arbritrary integer limit
>./ (#~ pandig)i.&.(p:inv) 7999999 NB. sieve:i.&.(p:inv) max >/.
