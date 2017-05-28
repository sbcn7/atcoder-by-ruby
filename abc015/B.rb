# http://abc015.contest.atcoder.jp/tasks/abc015_2

N = gets.to_i
a = gets.split.map(&:to_i)

a.delete(0)
puts (a.inject(:+) / a.size.to_f).ceil
