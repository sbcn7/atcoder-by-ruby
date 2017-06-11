# http://abc017.contest.atcoder.jp/tasks/abc017_3

N, M = gets.split.map(&:to_i)
l_r_s = Array.new(N) { gets.split.map(&:to_i) }

gems = Array.new(M)
max_score = 0

# 2**N: 遺跡の探索パターン数
#       xビット目が1の時、x番目の遺跡を探索する。
(0..(2**N - 1)).each do |pattern|
  gems.fill(0)
  (0..(N - 1)).each do |i|
    # i番目の遺跡を探索するかどうか判定
    if pattern >> i & 1 == 1
      (l_r_s[i][0]..l_r_s[i][1]).each { |j| gems[j - 1] += 1 }
    end
  end

  if gems.any? { |gem| gem.zero? }
    score = 0
    (0..(N - 1)).each { |j| score += l_r_s[j][2] if pattern >> j & 1 == 1 }
    max_score = [max_score, score].max
  end
end

puts max_score
