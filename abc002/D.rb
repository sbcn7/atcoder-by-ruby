# http://abc002.contest.atcoder.jp/tasks/abc002_4

N, M = gets.split.map(&:to_i)
rels = []

M.times do
  rels.push gets.split.map { |num| num.to_i - 1 }
end

max = 1

# N人いる時の1人以上の組合せは(2^N - 1)通り
for i in 1..2**N do
  # i番目の組合せを取得
  group = N.times.select { |j| i >> j & 1 == 1 }
  # 組合せ内が全て知り合いかどうか判定
  if (group.combination(2).to_a - rels).empty?
    max = [max, group.length].max
  end
end

puts max
