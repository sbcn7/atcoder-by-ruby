# http://abc001.contest.atcoder.jp/tasks/abc001_4

N = gets.to_i
times = []
ans = []

# 入力を5分単位で丸めてtimesに格納
N.times { |n|
  s, e = gets.split('-').map(&:to_i)
  s -= s % 5
  e += (e % 5 == 0) ? 0 : 5 - e % 5
  times.push([s, (e % 100 == 60) ? e + 40 : e])
}

# 振り始めの時刻の早い順に並べ替え
times = times.sort

# 時刻の重複部分をまとめた結果をansに格納
times.push([9999, 9999])
tmp = times.first
times.each { |time|
  if time[0] <= tmp[1] then
    tmp[1] = [time[1], tmp[1]].max
  else
    ans.push(tmp)
    tmp = time
  end
}

# ansの出力
ans.each { |time|
  puts("%04d-%04d" % time)
}
