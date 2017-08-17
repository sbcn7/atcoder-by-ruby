# http://abc036.contest.atcoder.jp/tasks/abc036_a

A, B = gets.split.map(&:to_i)

puts (B % A).zero? ? B / A : B / A + 1
