# http://abc007.contest.atcoder.jp/tasks/abc007_3

R, C = gets.split.map(&:to_i)
sy, sx = gets.split.map { |x| x.to_i - 1 }
gy, gx = gets.split.map { |x| x.to_i - 1 }
c = []

R.times do
  c.push gets.chomp
end

count = 0
y, x = sy, sx
queue = [[y, x]]
queue2 = []
while y != gy || x != gx do
  while queue.size != 0 do
    y, x = queue.shift
    c[y][x] = 'x'
    break if y == gy && x == gx
    queue2.push [y - 1, x] if c[y - 1][x] == '.'
    queue2.push [y + 1, x] if c[y + 1][x] == '.'
    queue2.push [y, x - 1] if c[y][x - 1] == '.'
    queue2.push [y, x + 1] if c[y][x + 1] == '.'
  end
  count += 1 if y != gy || x != gx
  queue = queue2
  queue2 = []
end

puts count
