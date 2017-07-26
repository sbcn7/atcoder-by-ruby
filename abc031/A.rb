# http://abc031.contest.atcoder.jp/tasks/abc031_a

A, D = gets.split.map(&:to_i)

puts [(A + 1) * D, A * (D + 1)].max
