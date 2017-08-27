# http://abc040.contest.atcoder.jp/tasks/abc040_a

n, x = gets.split.map(&:to_i)

puts (x * 2 <= n) ? x - 1 : n - x
