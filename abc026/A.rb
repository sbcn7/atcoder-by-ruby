# http://abc026.contest.atcoder.jp/tasks/abc026_a

A = gets.to_i
x = (1..A).max_by { |i| i * (A - i) }
puts x * (A - x)
