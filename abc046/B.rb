# http://abc046.contest.atcoder.jp/tasks/abc046_b

N, K = gets.split.map(&:to_i)

puts K * (K - 1)**(N - 1)
