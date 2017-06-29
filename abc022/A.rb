# http://abc022.contest.atcoder.jp/tasks/abc022_a

N, S, T = gets.split.map(&:to_i)
W = gets.to_i
A = Array.new(N - 1) { gets.to_i }
ans = (S <= W && W <= T) ? 1 : 0

(1..N - 1).each do |i|
  weight = W + A[0, i].inject(:+)
  ans += 1 if S <= weight && weight <= T
end

puts ans
