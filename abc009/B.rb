# http://abc009.contest.atcoder.jp/tasks/abc009_2

N = gets.to_i
A = Array.new(N) { gets.to_i }

puts A.sort.uniq[-2]
