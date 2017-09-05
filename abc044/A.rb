# http://abc044.contest.atcoder.jp/tasks/abc044_a

N = gets.to_i
K = gets.to_i
X = gets.to_i
Y = gets.to_i

puts (N <= K) ? N * X : K * X + (N - K) * Y
