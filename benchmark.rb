require 'benchmark'
require './fizz_buzz'

n = 1000000
Benchmark.bm do |x|
  x.report { FizzBuzz.new(1..n) }
end