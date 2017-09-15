# http://abc046.contest.atcoder.jp/tasks/arc062_a

N = gets.to_i
TA = Array.new(N) { gets.split.map(&:to_i) }
ta_now = [0, 0]

N.times do |i|
  ta_tmp = TA[i]
  while ta_tmp[0] < ta_now[0] || ta_tmp[1] < ta_now[1] do
    ta_tmp = [ta_tmp[0] + TA[i][0], ta_tmp[1] + TA[i][1]]
  end
  ta_now = ta_tmp
end

puts ta_now.inject(:+)
