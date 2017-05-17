# http://abc009.contest.atcoder.jp/tasks/abc009_3

N, K = gets.split.map(&:to_i)
@S = gets.chomp.split('')
ans = []

def diff(a, b)
  # a固定で、@Sに対するa+bの最小入れ替え回数をカウントする
  tmp = []
  count = 0
  a.each_index do |idx|
    count += 1 if a[idx] != @S[idx]
  end

  b.each do |x|
    b.each_index do |idx|
      if x == @S[a.size + idx] && tmp[idx].nil?
        tmp[idx] = x
        break
      elsif idx == b.size - 1
        count += 1
      end
    end
  end
  count
end

for i in 0...@S.length do
  # t: まだ使える文字
  t = []
  @S.each do |s|
    t.push s if @S.count(s) > (t + ans).count(s)
  end

  t.sort.each do |t_char|
    tmp = t.clone
    tmp.delete_at(t.index(t_char))
    if diff(ans + [t_char], tmp) <= K
      ans.push t_char
      break
    end
  end
end

puts ans.join
