# http://abc014.contest.atcoder.jp/tasks/abc014_2

n, X = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = 0

(0..(n - 1)).each do |i|
  if (X >> i) & 1 == 1
    sum += a[i]
  end
end

puts sum
