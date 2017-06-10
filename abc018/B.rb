# http://abc018.contest.atcoder.jp/tasks/abc018_2

s = gets.chomp
N = gets.to_i
l_r = Array.new(N) { gets.split.map(&:to_i) }

l_r.each { |l, r| s[(l - 1)..(r - 1)] = s[(l - 1)..(r - 1)].reverse }
puts s
