# http://abc027.contest.atcoder.jp/tasks/abc027_b

N = gets.to_i
a = gets.split.map(&:to_i)
count = 0

if a.inject { |sum, n| sum + n } % N == 0
  a.each do |i|
  	# a[i]の島の左右の人数で橋を架けるか判定する
    count += 1
  end
else
  puts -1 
end