# http://abc001.contest.atcoder.jp/tasks/abc001_4

N = gets.to_i
s_e = []
ans = []

N.times { |n|
  s, e = gets.split('-').map(&:to_i)
  s_e[n] = [s / 5 * 5, (e + 4) / 5 * 5]
  if s_e[n][1] % 100 == 60 then
    s_e[n][1] = s_e[n][1] / 100 * 100 + 100
  end
}

s_e = s_e.sort { |a, b| a[0] <=> b[0] }

s_e.each { |s, e|
  if ans.length.zero? then
    ans[0] = [s, e]
  else
    if s <= ans[ans.length - 1][1] then
      ans[ans.length - 1][1] = (e > ans[ans.length - 1][1]) ? e : ans[ans.length - 1][1]
    else
      ans[ans.length] = [s, e]
    end
  end
}

ans.each { |s, e|
  puts("%04d-%04d" % [s, e])
}
