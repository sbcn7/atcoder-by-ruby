# http://abc042.contest.atcoder.jp/tasks/abc042_a

ABC = gets.split.map(&:to_i)

puts (ABC.count(5) == 2 && ABC.count(7) == 1) ? 'YES' : 'NO'
