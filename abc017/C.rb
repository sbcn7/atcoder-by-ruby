# http://abc017.contest.atcoder.jp/tasks/abc017_3

N, M = gets.split.map(&:to_i)
l_r_s = Array.new(N) { gets.split.map(&:to_i) }

# 遺跡の全探索パターンの得点を求める
scores = []
(0..N**2).each do |i|
  sum = 0
  (0..(N - 1)).each do |j|
    sum += l_r_s[j][2] if i >> j & 1 == 1
  end
  scores << [i, sum]
end

# 得点の大きい順に魔王が復活するかどうかを判定する
gems = Array.new(M, 0)
scores.sort_by { |_pattern, score| score }.reverse
max_score = 0
scores.each do |pattern, score|
  (0..(N - 1)).each do |i|
    if pattern >> i & 1 == 1
      (l_r_s[i][0]..l_r_s[i][1]).each { |j| gems[j - 1] += 1 }
    end
  end
  max_score = [max_score, score].max if gems.any? { |gem| gem.zero? }
end

puts max_score
