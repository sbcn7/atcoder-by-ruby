# http://abc025.contest.atcoder.jp/tasks/abc025_c

b = Array.new(2) { gets.split.map(&:to_i) }
c = Array.new(3) { gets.split.map(&:to_i) }
pattern = Array.new(5, 'o') + Array.new(4, 'x')
point_o = 1.0 / 0
point_x = 0

pattern.permutation do |ox|
  tmp_point_o = 0
  tmp_point_x = 0
  (0..1).each do |i_b|
    (0..2).each do |j_b|
      if ox[i_b * 3 + j_b] == ox[(i_b + 1) * 3 + j_b]
        tmp_point_o += b[i_b][j_b]
      else
        tmp_point_x += b[i_b][j_b]
      end 

      if ox[j_b * 3 + i_b] == ox[j_b * 3 + i_b + 1]
        tmp_point_o += c[j_b][i_b]
      else
        tmp_point_x += c[j_b][i_b]
      end 
    end
  end
  if point_o > tmp_point_o && tmp_point_o > (tmp_point_o + tmp_point_x) / 2
    point_o = tmp_point_o
    point_x = tmp_point_x
  end
end

puts point_o
puts point_x
