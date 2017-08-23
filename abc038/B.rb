# http://abc038.contest.atcoder.jp/tasks/abc038_b

H1, W1 = gets.split.map(&:to_i)
H2, W2 = gets.split.map(&:to_i)

puts [H2, W2].include?(H1) || [H2, W2].include?(W1) ? 'YES' : 'NO'
