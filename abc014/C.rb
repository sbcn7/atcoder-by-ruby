# http://abc014.contest.atcoder.jp/tasks/abc014_3

n = gets.to_i
ranges = []

n.times { ranges << gets.split.map(&:to_i) }

max = 0
ranges.flatten.each do |p|
  p_count = 0
  ranges.each { |first, last| p_count += 1 if p >= first && p <= last }
  max = [max, p_count].max
end

puts max
