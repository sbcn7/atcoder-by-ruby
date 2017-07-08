# http://abc025.contest.atcoder.jp/tasks/abc025_b

N, A, B = gets.split.map(&:to_i)
sd_list = Array.new(N) { gets.split }

point = sd_list.inject(0) do |dist, sd|
  move = sd[1].to_i < A ? A : [sd[1].to_i, B].min
  sd[0] == 'East' ? dist + move : dist - move
end

print 'East ' if point > 0
print 'West ' if point < 0
puts point.abs
