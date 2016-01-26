// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.
var even = function(n) {
  var a = new Array();

  for (var i=n; a.length<n; i++) {
    if (i%2===0) {
        a.push(i);
    }
  }
  return a;
}

// test
console.log(even(0));
console.log(even(1));
console.log(even(2));
console.log(even(3));
console.log(even(4));
console.log(even(5));
console.log(even(6));
console.log(even(100));
