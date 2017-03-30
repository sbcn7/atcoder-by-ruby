# http://abc004.contest.atcoder.jp/tasks/abc004_3

cards = [*1..6]
N = gets.to_i
N1 = N / 5 % 6
N2 = N % 5

for i in 0...N1 do
  cards.push cards.shift
end

for i in 0...N2 do
  cards[i % 5], cards[i % 5 + 1] = cards[i % 5 + 1], cards[i % 5]
end

puts cards.join
