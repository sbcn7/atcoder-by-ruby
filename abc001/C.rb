# http://abc001.contest.atcoder.jp/tasks/abc001_3

deg, dis = gets.split.map(&:to_i)

speed = (dis / 6.0).round
border_arr = [2, 15, 33, 54, 79, 107, 138, 171, 207, 244, 284, 326, 1.0 / 0]
w = border_arr.index { |border| speed <= border }

dir_arr = %w(N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW N)
idx = (deg / 225.0).round
dir = (w == 0) ? 'C' : dir_arr[idx]

puts("#{dir} #{w}")
