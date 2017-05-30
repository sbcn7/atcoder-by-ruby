# http://abc015.contest.atcoder.jp/tasks/abc015_3

N, K = gets.split.map(&:to_i)
T = []
N.times { T << gets.split.map(&:to_i) }
judge = false

[*0..(K - 1)].repeated_permutation(N) do |pattern|
  selected = []
  T.each { |t_line| selected << t_line[pattern.shift] }
  if selected.inject(&:^) == 0
    judge = true
    break
  end
end

puts judge ? 'Found' : 'Nothing'
