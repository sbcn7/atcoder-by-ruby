# http://abc025.contest.atcoder.jp/tasks/abc025_a

S = gets.chomp
N = gets.to_i

s1_idx, s2_idx = (N - 1).divmod(5)
puts S[s1_idx] + S[s2_idx]
