#
# 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.
#
# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?
require "benchmark"

def even(n)
  a = Array.new
  i = 0

  until a.length == n do
    if (n+i)%2 == 0
      a << n+i
    end
    i += 1
  end
  a
end

#test
p "even loop test"
10.times{ p even(rand(10)); }

def even_recursion(n, a=[], i=0)
  if a.length == n
    a
  else
    if (n+i)%2 == 0
      a << n+i
    end
    i += 1
    even_recursion(n, a, i)
  end
end

#test
p "even recursion test"
10.times{ p even_recursion(rand(10)); }

#benchmarks
Benchmark.bm do |x|
  p "EVEN LOOP"
  x.report do
     1_000_000.times {
      even(100)
     }
  end
end

Benchmark.bm do |x|
  p "EVEN RECURSION"
  x.report do
     1_000_000.times {
      even_recursion(100)
     }
  end
end

#  loop is faster
# user     system      total        real
# "EVEN LOOP"
# 20.970000   0.100000  21.070000 ( 21.125647)
#  user     system      total        real
# "EVEN RECURSION"
# 35.160000   0.320000  35.480000 ( 36.704316)
