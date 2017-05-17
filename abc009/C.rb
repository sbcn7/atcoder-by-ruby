# http://abc009.contest.atcoder.jp/tasks/abc009_3

N, K = gets.split.map(&:to_i)
@S = gets.chomp.split('')
ans = []

def diff(a, b)
  # a固定で、@Sに対するa+bの最小入れ替え回数をカウントする
  tmp = []
  count = 0
  for i in 0...a.size do
    count += 1 if a[i] != @S[i]
  end

  b.each_char do |x|
    for idx in 0...b.size do
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
    t.push s if @S.count(s) > t.count(s) + ans.count(s)
  end

  t.sort.each do |t_char|
    tmp = t.clone
    tmp.delete_at(t.index(t_char))
    if diff(ans.join + t_char, tmp.join) <= K
      ans.push t_char
      break
    end
  end
end

puts ans.join
