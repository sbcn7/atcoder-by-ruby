# http://abc005.contest.atcoder.jp/tasks/abc005_4

# たこ焼き器の左上を(0, 0)として、
# (x, y)から右下までのたこ焼きの美味しさの合計を求める関数
def rect(x, y)
  return 0 if x >= @N || y >= @N

  if @rect_list[x][y].nil?
    sum = 0
    (y...@N).each do |i|
      sum += @D[i].slice(x...@N).inject(:+)
    end
    @rect_list[x][y] = sum
  end

  return @rect_list[x][y]
end

# たこ焼き器の左上を(0, 0)として、
# (x, y)から(x_end, y_end)までのたこ焼きの美味しさの合計を求める関数
def calc_rect(x, y, x_end, y_end)
  ans = rect(x, y) - rect(x_end + 1, y) - rect(x, y_end + 1) + rect(x_end + 1, y_end + 1)
  return ans
end

@N = gets.to_i
@D = []

# rect関数の結果リスト（メモ化）
@rect_list = Array.new(@N).map { Array.new(@N) }

@N.times do
  @D.push gets.split.map(&:to_i)
end

# list[idx]: (idx + 1)個たこ焼きを焼いた時の美味しさの合計の最大値
list = Array.new(@N**2, 0)

# 全ての長方形の選び方について、たこ焼きの美味しさの合計を求める
@N.times do |x|
  @N.times do |y|
    (1..@N - x).each do |l|
      (1..@N - y).each do |h|
        x_end, y_end = x + l - 1, y + h - 1
        list[l * h - 1] = [list[l * h - 1], calc_rect(x, y, x_end, y_end)].max
      end
    end
  end
end

# 最大数よりも少なく焼いた方が最適である場合を考慮してlistを更新
max = 0
(@N**2).times do |i|
  if list[i] > max
    max = list[i]
  else
    list[i] = max
  end
end

Q = gets.to_i

Q.times do
  puts list[gets.to_i - 1]
end
