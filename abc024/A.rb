# http://abc024.contest.atcoder.jp/submissions/1402840

A, B, C, K = gets.split.map(&:to_i)
S, T = gets.split.map(&:to_i)
bonus = (S + T < K) ? 0 : (S + T) * C
 
puts A * S + B * T - bonus
