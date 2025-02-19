max:{x[> x][0]} // maximum of a vector
palindrome: {($x) ~ |($x)} // checks if palindrome $x casts x to string,|x reverses x,~ matches
// only check from 900 to 999, makes no sense to check lower numbers
// since their products can only be smaller
ans: ,//{(900_!1000)*x}'(900_!1000) // multiply all numbers and flatten to vector
max (?ans [&palindrome' ans]) // check for palindrome and take maximum

