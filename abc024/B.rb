# http://abc024.contest.atcoder.jp/tasks/abc024_b

N, T = gets.split.map(&:to_i)
A = Array.new(N) { gets.to_i }
count = T

(1..N - 1).each do |i|
  diff = A[i] - A[i - 1]
  count += diff < T ? diff : T
end

puts count
