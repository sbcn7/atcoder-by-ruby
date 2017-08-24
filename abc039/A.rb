# http://abc039.contest.atcoder.jp/tasks/abc039_a

A, B, C = gets.split.map(&:to_i)

puts (A * B + B * C + C * A) * 2
