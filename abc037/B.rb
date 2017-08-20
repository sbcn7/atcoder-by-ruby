# http://abc037.contest.atcoder.jp/tasks/abc037_b

N, Q = gets.split.map(&:to_i)
LRT = Array.new(Q) { gets.split.map(&:to_i) }
a = Array.new(N, 0)

LRT.each do |l, r, t|
  (l..r).each { |i| a[i - 1] = t }
end

puts a
