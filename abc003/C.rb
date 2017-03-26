# http://abc003.contest.atcoder.jp/tasks/abc003_3

rate = 0
N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

R.sort.slice(-K, K).each do |r|
  rate = (rate + r) / 2.0
end

puts rate
