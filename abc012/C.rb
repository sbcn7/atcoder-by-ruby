# http://abc012.contest.atcoder.jp/tasks/abc012_3

n = 2025 - gets.to_i

for i in 1..9 do
  for j in 1..9 do
    puts "#{i} x #{j}" if i * j == n
  end
end
