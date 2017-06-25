# http://abc020.contest.atcoder.jp/tasks/abc020_c

H, W, T = gets.split.map(&:to_i)
s = Array.new(H) { gets.chomp }

H.times do |i|
  W.times do |j|
    S = [i, j] if s[i][j] == 'S'
    G = [i, j] if s[i][j] == 'G'
  end
end

dist_y = (G[0] - S[0]).abs
dist_x = (G[1] - S[1]).abs
path_y = dist_y.zero? ? [] : Array.new(dist_y, 'y')
path_x = dist_x.zero? ? [] : Array.new(dist_x, 'x')
path_list = path_y + path_x
time = 0

(T - 1).downto(1) do |x_time|
  path_list.permutation(path_list.size) do |path|
    time = 0
    px = 0
    py = 0
    path.each do |dir|
      px += 1 if dir == 'x'
      py += 1 if dir == 'y'
      time += (s[py][px] == '#') ? x_time : 1
    end
    if time <= T
      puts x_time
      break
    end
  end
  break if time <= T
end
