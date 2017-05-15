# http://abc013.contest.atcoder.jp/tasks/abc013_2

a = gets.to_i
b = gets.to_i
diff = (a - b).abs

puts diff < 5 ? diff : 10 - diff
