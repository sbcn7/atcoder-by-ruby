# http://abc030.contest.atcoder.jp/tasks/abc030_b

n, m = gets.split.map(&:to_i)

n = n > 11 ? n - 12 : n
ans = ((n * 60 + m - m * 12) / 2.0).abs
puts ans > 180 ? 360 - ans : ans
