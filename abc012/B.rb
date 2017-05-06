# http://abc012.contest.atcoder.jp/tasks/abc012_2

N = gets.to_i

puts "%02d:%02d:%02d" % [N / 3600, N % 3600 / 60, N % 60]
