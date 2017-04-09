# http://abc006.contest.atcoder.jp/tasks/abc006_3

N, M = gets.split.map(&:to_i)
ans = '-1 -1 -1'
break_flg = (2 * N > M || 4 * N < M) ? true : false

if 2 * N / 2 + 4 * (N - N / 2) <= M
  (0..N).each do |i|
    break if break_flg
    (0..N - i).each do |j|
      sum = 2 * i + 3 * j + 4 * (N - i - j)
      if sum == M
        ans = "#{i} #{j} #{N - i - j}"
      elsif sum < M
        break_flg = true
        break
      end
    end
  end
else
  N.downto(0) do |i|
    break if break_flg
    (N - i).downto(0) do |j|
      sum = 2 * i + 3 * j + 4 * (N - i - j)
      if sum == M
        ans = "#{i} #{j} #{N - i - j}"
      elsif sum > M
        break_flg = true
        break
      end
    end
  end
end

puts ans
