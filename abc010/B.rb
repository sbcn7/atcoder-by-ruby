# http://abc010.contest.atcoder.jp/tasks/abc010_2

n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0

a.each do |hana|
  count = 0
  while (hana - count) % 3 == 2 || (hana - count) % 2 == 0
    count += 1
  end
  ans += count
end

puts ans
