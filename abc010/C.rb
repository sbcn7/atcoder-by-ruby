# http://abc010.contest.atcoder.jp/tasks/abc010_3

tx_a, ty_a, tx_b, ty_b, T, V = gets.split.map(&:to_i)
n = gets.to_i
girls = []

n.times { girls << gets.split.map(&:to_i) }

def get_distance(x_begin, y_begin, x_end, y_end)
  Math.sqrt((x_end - x_begin)**2 + (y_end - y_begin)**2)
end

judge = girls.any? do |x, y|
  first_dist = get_distance(tx_a, ty_a, x, y)
  last_dist = get_distance(x, y, tx_b, ty_b)
  first_dist + last_dist <= T * V
end

puts judge ? 'YES' : 'NO'
