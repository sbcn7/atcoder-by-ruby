# http://abc035.contest.atcoder.jp/tasks/abc035_b

S = gets.chomp
T = gets.to_i

x = (S.count('R') - S.count('L')).abs
y = (S.count('U') - S.count('D')).abs
question = S.count('?')

puts x + y + question
