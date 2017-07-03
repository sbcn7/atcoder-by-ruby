# http://abc023.contest.atcoder.jp/tasks/abc023_c

R, C, K = gets.split.map(&:to_i)
N = gets.to_i
rc = Array.new(N) { gets.split.map(&:to_i) }
r_list, c_list = rc.transpose
count = 0

(1..R).each do |i|
  (1..C).each do |j|
    count += 1 if r_list.count(i) + c_list.count(j) - (rc.include?([i, j]) ? 1 : 0) == K
  end
end

puts count
