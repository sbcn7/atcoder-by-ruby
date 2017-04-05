# http://abc005.contest.atcoder.jp/tasks/abc005_4

def rect(x, y)
p "---rect---"
p x
p y
  return 0 if x >= @N || y >= @N
  sum = 0
  (y...@N).each do |i|
    sum += @D[i].slice(x...@N).inject(:+)
  end
puts "sum: #{sum}"
  return sum
end

def calc_rect(x, y, x_end, y_end)
p "---calc_rect---"
p x
p y
p x_end
p y_end
  ans = rect(x, y) - rect(x_end + 1, y) - rect(x, y_end + 1) + rect(x_end + 1, y_end + 1)
  return ans
end

@N = gets.to_i
@D = []

@N.times do
  @D.push gets.split.map(&:to_i)
end

list = Array.new(@N**2, 0)

@N.times do |x|
  @N.times do |y|
    (1..@N - x).each do |l|
      (1..@N - y).each do |h|
p "---x, y, l, h---"
p x
p y
p l
p h
        x_end, y_end = x + l - 1, y + h - 1
        list[l * h - 1] = [list[l * h - 1], calc_rect(x, y, x_end, y_end)].max
puts "list[#{l * h - 1}]: #{list[l * h - 1]}"
      end
    end
  end
end

max = 0
(@N**2).times do |i|
  if list[i] > max
    max = list[i]
  else
    list[i] = max
  end
end
p "---end---"

Q = gets.to_i

Q.times do
  puts list[gets.to_i - 1]
end
