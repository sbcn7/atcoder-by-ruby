# http://abc006.contest.atcoder.jp/tasks/abc006_4

N = gets.to_i
c = []

N.times do
  c.push gets.to_i
end

order_list = []
(N - 1).downto(0) do |idx|
p "idx: #{idx}"
  now = c[idx]
  tmp = [now]
p "c.slice(0..#{idx}): #{c.slice(0..idx)}"
  c.slice(0..idx).reverse_each do |x|
    if x < now
      tmp.push x
      now = x
    end
  end
p "tmp: #{tmp}"
  order_list.push tmp
end

puts N - order_list.map(&:size).max
