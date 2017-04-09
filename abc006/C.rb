# http://abc006.contest.atcoder.jp/tasks/abc006_3

N, M = gets.split.map(&:to_i)
ans = '-1 -1 -1'

(0..N).each do |i|
  x = 4 * N - 2 * i - M
  y = M + i - 3 * N
  if x >= 0 && y >= 0
    ans = "#{i} #{x} #{y}"
    break
  end
end

puts ans
