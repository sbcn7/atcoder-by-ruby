# http://abc017.contest.atcoder.jp/tasks/abc017_1

s1, e1 = gets.split.map(&:to_i)
s2, e2 = gets.split.map(&:to_i)
s3, e3 = gets.split.map(&:to_i)

puts (s1 * e1 + s2 * e2 + s3 * e3) / 10
