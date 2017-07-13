# http://abc027.contest.atcoder.jp/tasks/abc027_a

l = gets.split.map(&:to_i)
idx = 0

3.times { |i| idx = i if l.count(l[i]) == 1 }

puts l[idx]
