require 'benchmark'
require_relative 'factorial'

n = 400
m = 10_000

Benchmark.bm(16) do |b|
  b.report('recursive')   { m.times { factorial_recursive(n) } }
  b.report('iterative')   { m.times { factorial_iterative(n) } }
end
