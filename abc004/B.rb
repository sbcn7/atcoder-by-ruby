# http://abc004.contest.atcoder.jp/tasks/abc004_2

c = []

4.times { c.push gets.chomp }
puts c.reverse.map(&:reverse)
