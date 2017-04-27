# http://abc009.contest.atcoder.jp/tasks/abc009_3

N, K = gets.split.map(&:to_i)
S = gets.chomp.split('')
s = S
count = 0

S.each_index do |idx|
  idx_min = s.index(s[idx..S.size].min)
  if idx != idx_min
    count += 1
    s_latter = s[idx..S.size]
    s_latter.delete_at(idx_min)
    if (S[[idx + 1, S.size].min..S.size] - s_latter).size <= K - count
      s[idx], s[idx_min] = s[idx_min], s[idx]
    end
    count = (S - s).size
  end
end

puts s.join
