# http://abc015.contest.atcoder.jp/tasks/abc015_3

N, K = gets.split.map(&:to_i)
T = []
N.times { T << gets.split.map(&:to_i) }

[*1..K].repeated_combination(N) do |pattern|
  (0..(N - 1)).each do |i|
  end
end
