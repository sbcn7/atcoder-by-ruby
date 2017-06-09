# http://abc018.contest.atcoder.jp/tasks/abc018_1

A = gets.to_i
B = gets.to_i
C = gets.to_i

sorted = [A, B, C].sort.reverse

puts sorted.index(A) + 1
puts sorted.index(B) + 1
puts sorted.index(C) + 1
