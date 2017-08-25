# http://abc039.contest.atcoder.jp/tasks/abc039_b

X = gets.to_i
ans = 0

(1..X).any? { |n| (ans = n)**4 == X }

puts ans
