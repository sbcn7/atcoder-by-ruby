# http://abc004.contest.atcoder.jp/tasks/abc004_3

N = gets.to_i

cards = [*1..6].rotate(N / 5 % 6)
cards = cards[0..N % 5].rotate + cards[N % 5 + 1..5]

puts cards.join
