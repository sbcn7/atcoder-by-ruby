# http://abc032.contest.atcoder.jp/tasks/abc032_a

a = gets.to_i
b = gets.to_i
n = gets.to_i

while n % a != 0 || n % b != 0 do
  n += 1
end

puts n
