# http://abc006.contest.atcoder.jp/tasks/abc006_2

n = gets.to_i
a = [0, 0, 1]
 
n.times do |i|
  next if i < 3
  a.push (a[i - 1] + a[i - 2] + a[i - 3]) % 10007
end
 
puts a[n - 1]
