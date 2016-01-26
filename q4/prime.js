// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

var isPrime = function(n) {
  for (var i = 2; i < n; i++) {
      if (n % i === 0) {
          return false;
      }
  }
  return n > 1;
}

// test
console.log("1 is a prime number: " + isPrime(1));
console.log("2 is a prime number: " + isPrime(2));
console.log("3 is a prime number: " + isPrime(3));
console.log("4 is a prime number: " + isPrime(4));
console.log("5 is a prime number: " + isPrime(5));
console.log("6 is a prime number: " + isPrime(6));
console.log("7 is a prime number: " + isPrime(7));
console.log("8 is a prime number: " + isPrime(8));
console.log("9 is a prime number: " + isPrime(9));
console.log("10 is a prime number: " + isPrime(10));
console.log("433 is a prime number: " + isPrime(433));
console.log("982451653 is a prime number: " + isPrime(982451653));
