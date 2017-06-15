# http://abc019.contest.atcoder.jp/tasks/abc019_3

N = gets.to_i
a = gets.split.map(&:to_i)
count = 0

a.each do |x|
  count += (x % 2 == 0) ? 0 : 1
end

puts count
