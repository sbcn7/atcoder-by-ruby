# http://abc022.contest.atcoder.jp/tasks/abc022_b

N = gets.to_i
A = Array.new(N) { gets.to_i }

puts A.size - A.uniq.size
