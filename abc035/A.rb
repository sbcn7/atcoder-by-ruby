# http://abc035.contest.atcoder.jp/tasks/abc035_a

W, H = gets.split.map(&:to_i)

puts (W == H * 4 / 3) ? '4:3' : '16:9'
