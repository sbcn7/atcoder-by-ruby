# http://abc002.contest.atcoder.jp/tasks/abc002_3

xa, ya, xb, yb, xc, yc = gets.split.map(&:to_i)

a = xb - xa
b = yb - ya
c = xc - xa
d = yc - ya

puts((a * d - b * c).abs / 2.0)
