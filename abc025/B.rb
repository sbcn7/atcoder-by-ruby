# http://abc025.contest.atcoder.jp/tasks/abc025_b

N, A, B = gets.split.map(&:to_i)
sd = Array.new(N) { gets.split }

point = sd.inject(0) do |dist, s, d|
  dist += (s == 'East') ? d.to_i : d.to_i * (-1)
end


