# http://abc014.contest.atcoder.jp/tasks/abc014_1

a = gets.to_i
b = gets.to_i
 
puts (a % b).zero? ? 0 : b - (a % b)
