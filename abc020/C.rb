# http://abc020.contest.atcoder.jp/tasks/abc020_c

H, W, T = gets.split.map(&:to_i)
s = Array.new(H) { gets.chomp }

H.times do |i|
  W.times do |j|
    S = [i, j] if s[i][j] == 'S'
    G = [i, j] if s[i][j] == 'G'
  end
end
p S
p G

(T - 1).downto(1) do |x|
  # x秒でゴール可能か調べる
end
