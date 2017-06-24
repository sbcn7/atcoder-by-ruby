# http://abc020.contest.atcoder.jp/tasks/abc020_c

H, W, T = gets.split.map(&:to_i)
s = Array.new(H) { gets.chomp }

H.times do |i|
  W.times do |j|
    S = [i, j] if s[i][j] == 'S'
    G = [i, j] if s[i][j] == 'G'
  end
end

dist_y, dist_x = G - S
path_list = Array.new(dist_y, 'y') + Array.new(dist_x, 'x')
time = 0

(T - 1).downto(1) do |x_time|
  path_list.permutation(path_list.size) do |path|
    time = 0
    px = 0
    py = 0
    path.each do |dir|
      px += 1 if dir == 'x'
      py += 1 if dir == 'y'
p px
p py
      time += s[py][px].equal?('#') ? x_time : 1
p "-----"
    end
    break if time <= T
  end
  break if time <= T
end

puts time
