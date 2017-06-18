# http://abc015.contest.atcoder.jp/tasks/abc015_4

W = gets.to_i
N, K = gets.split.map(&:to_i)
AB = Array.new(N) { gets.split.map(&:to_i) }
ans = 0

(2**N).times do |i|
  ab_select = []
  N.times { |j| ab_select << AB[j] if (i >> j & 1) == 1 }
  a_sum, b_sum = ab_select.transpose.map { |x| x.inject(:+) }
  next if ab_select.empty? || a_sum > W || ab_select.size > K
  ans = [ans, b_sum].max
end

puts ans
