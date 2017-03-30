# http://abc004.contest.atcoder.jp/tasks/abc004_4

R, G, B = gets.split.map(&:to_i)
ans = 0

for i in 1..R do
  ans += i / 2
end
for i in 1..G do
  ans += i / 2
end
for i in 1..B do
  ans += i / 2
end

puts ans
