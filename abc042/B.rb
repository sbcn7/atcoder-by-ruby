# http://abc042.contest.atcoder.jp/tasks/abc042_b

N, L = gets.split.map(&:to_i)
S = Array.new(N) { gets.chomp }

puts S.sort.join
