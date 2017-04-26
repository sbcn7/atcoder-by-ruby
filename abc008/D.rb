# http://abc008.contest.atcoder.jp/tasks/abc008_4

W, H = gets.split.map(&:to_i)
N = gets.to_i
XY = []

N.times do
  XY.push gets.split.map(&:to_i)
end

XY.permutation(N) do |xy|
  xy.each do |x, y|
    # 金塊を回収したい
  end
end
