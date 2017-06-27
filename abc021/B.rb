# http://abc021.contest.atcoder.jp/tasks/abc021_b

N = gets.to_i
a, b = gets.split.map(&:to_i)
K = gets.to_i
P = gets.split.map(&:to_i)

path = [a] + P + [b]
puts (path.size == path.uniq.size) ? 'YES' : 'NO'
