# http://abc008.contest.atcoder.jp/tasks/abc008_3

N = gets.to_i
C = Array.new(N) { gets.to_i }
count = 0

C.each do |c1|
  s = C.count { |c2| c1 % c2 == 0 } - 1
  count += s.even? ? ((s + 2) / (s + 1).to_f) : 1
end

puts format "%.12f", count / 2.0
