# http://abc035.contest.atcoder.jp/tasks/abc035_b

S = gets.chomp
T = gets.to_i

x = (S.count('R') - S.count('L')).abs
y = (S.count('U') - S.count('D')).abs
question = S.count('?')

if T == 1
  puts x + y + question
else
  ans = x + y - question
  if ans < 0
    puts ans.even? ? 0 : 1
  else
    puts ans
  end
end
