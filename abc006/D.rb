# http://abc006.contest.atcoder.jp/tasks/abc006_4

N = gets.to_i
c = []

N.times do
  c.push gets.to_i
end

ans = 0
(1...N).each do |i|
  if c.slice(0..i - 1).any? { |x| x > c[i] }
    ans += 1
  end
end

puts ans
