# http://abc009.contest.atcoder.jp/tasks/abc009_3

N, K = gets.split.map(&:to_i)
S = gets.chomp.split('')
s = S.clone
count = 0
 
S.each_index do |idx|
  s_target = s[idx..N - 1].sort.find do |s_min|
    tmp = s.clone
    idx_min = s[idx..N - 1].index(s_min) + idx
    tmp[idx], tmp[idx_min] = s[idx_min], s[idx]
    count = 0
    S.each_index do |i|
      count += 1 unless S[i] == tmp[i]
    end
#p "count: #{count}"
#p s
#p tmp
    count <= K
  end
#p "s_target: #{s_target}"

  if !s_target.nil? && s_target != s[idx]
    idx_target = s[idx..N - 1].index(s_target) + idx
    s[idx], s[idx_target] = s[idx_target], s[idx]
  end
  count = 0
  S.each_index do |i|
    count += 1 unless S[i] == s[i]
  end
end
 
puts s.join
