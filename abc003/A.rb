# http://abc003.contest.atcoder.jp/tasks/abc003_1

N = gets.to_i
sum = 0

for i in 1..N do
  sum = sum + 10000 * i
end

puts (sum / N.to_f).round
