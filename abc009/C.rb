# http://abc009.contest.atcoder.jp/tasks/abc009_3

N, K = gets.split.map(&:to_i)
S = gets.chomp.split('')
ans = ''

def diff(a, b)
  # a固定で、Sに対するa+bの最小入れ替え回数をカウントする
end

for i in 0...S.length do
  # t: まだ使える文字
  S.each do |s|
    t.push s if S.count(s) > ans.count(s)
  end

  t.sort.each do |t_char|
    if diff(ans + t_char, t.sort.shift) <= K
      ans.push t_char
      break
    end
  end
end
