# http://abc036.contest.atcoder.jp/tasks/abc036_b

N = gets.to_i
s = Array.new(N) { gets.chomp }

N.times do |j|
  (N - 1).downto(0) { |i| print s[i][j] }
  puts
end
