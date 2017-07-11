# http://abc026.contest.atcoder.jp/tasks/abc026_b

N = gets.to_i
R = Array.new(N) { gets.to_i }
radius = 0

R.sort.each_with_index { |r, i| radius += i.even? ? r**2 : -(r**2) }

puts (radius * Math::PI).abs
