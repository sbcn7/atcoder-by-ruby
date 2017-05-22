# http://abc014.contest.atcoder.jp/tasks/abc014_3

n = gets.to_i
range = []

n.times do
  range.push gets.split.map(&:to_i)
end

count = Array.new(1_000_001, 0)

range.each do |a, b|
  (a..b).each do |i|
    count[i] += 1
  end
end

puts count.max
